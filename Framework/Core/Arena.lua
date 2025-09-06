local Tinkr = ...
local Arena = {}

-- Arena states
Arena.States = {
    IDLE = "IDLE",
    QUEUING = "QUEUING", 
    IN_QUEUE = "IN_QUEUE",
    ENTERING = "ENTERING",
    IN_ARENA = "IN_ARENA",
    FINISHED = "FINISHED"
}

-- Arena types
Arena.Types = {
    ARENA_2V2 = 1,
    ARENA_3V3 = 2,
    ARENA_5V5 = 3
}

Arena.currentState = Arena.States.IDLE
Arena.queueStartTime = 0
Arena.arenaType = Arena.Types.ARENA_2V2
Arena.maxQueueTime = 300 -- 5 minutes max queue time

-- Initialize arena system
function Arena:Initialize()
    self.currentState = self.States.IDLE
    print("Arena framework initialized")
end

-- Queue for arena
function Arena:QueueForArena(arenaType)
    if self.currentState ~= self.States.IDLE then
        return false
    end
    
    self.arenaType = arenaType or self.Types.ARENA_2V2
    self.currentState = self.States.QUEUING
    self.queueStartTime = GetTime()
    
    -- Use Tinkr API to queue for arena
    if arenaType == self.Types.ARENA_2V2 then
        -- Queue for 2v2
        Eval("JoinBattlefield(1)", "arena_queue.lua")
    elseif arenaType == self.Types.ARENA_3V3 then
        -- Queue for 3v3  
        Eval("JoinBattlefield(2)", "arena_queue.lua")
    end
    
    print("Queuing for arena...")
    return true
end

-- Check if we're in arena
function Arena:IsInArena()
    local instanceType = select(2, IsInInstance())
    return instanceType == "arena"
end

-- Check if we're in queue
function Arena:IsInQueue()
    local status = GetBattlefieldStatus(1)
    return status == "queued"
end

-- Update arena state
function Arena:Update()
    local currentTime = GetTime()
    
    if self.currentState == self.States.QUEUING then
        if self:IsInQueue() then
            self.currentState = self.States.IN_QUEUE
            print("In arena queue")
        end
    elseif self.currentState == self.States.IN_QUEUE then
        if self:IsInArena() then
            self.currentState = self.States.IN_ARENA
            print("Entered arena!")
        elseif currentTime - self.queueStartTime > self.maxQueueTime then
            -- Queue timeout, leave and retry
            self:LeaveQueue()
            C_Timer.After(5, function() self:QueueForArena(self.arenaType) end)
        end
    elseif self.currentState == self.States.IN_ARENA then
        if not self:IsInArena() then
            self.currentState = self.States.FINISHED
            print("Arena finished")
            -- Auto-queue again after a short delay
            C_Timer.After(10, function() 
                self.currentState = self.States.IDLE
                self:QueueForArena(self.arenaType) 
            end)
        end
    end
end

-- Leave queue
function Arena:LeaveQueue()
    if self.currentState == self.States.IN_QUEUE then
        Eval("LeaveBattlefield()", "leave_queue.lua")
        self.currentState = self.States.IDLE
        print("Left arena queue")
    end
end

-- Get current state
function Arena:GetState()
    return self.currentState
end

return Arena