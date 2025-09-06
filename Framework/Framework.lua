local Tinkr = ...

-- Framework main module
local Framework = {}

-- Load core modules
Framework.Arena = Tinkr:require('Framework.Core.Arena')
Framework.Movement = Tinkr:require('Framework.Core.Movement') 
Framework.Combat = Tinkr:require('Framework.Core.Combat')

-- Framework state
Framework.initialized = false
Framework.updateTimer = 0
Framework.updateInterval = 0.1 -- 100ms updates

-- Initialize framework
function Framework:Initialize()
    if self.initialized then return end
    
    print("Initializing Arena Framework...")
    
    -- Initialize core modules
    self.Arena:Initialize()
    self.Movement:Initialize()
    self.Combat:Initialize()
    
    self.initialized = true
    print("Arena Framework initialized successfully!")
end

-- Main update loop
function Framework:Update()
    if not self.initialized then
        self:Initialize()
        return
    end
    
    -- Throttle updates
    local currentTime = GetTime()
    if currentTime - self.updateTimer < self.updateInterval then
        return
    end
    self.updateTimer = currentTime
    
    -- Update core modules
    self.Arena:Update()
    self.Movement:Update() 
    self.Combat:Update()
end

-- Start auto-arena
function Framework:StartAutoArena(arenaType)
    self:Initialize()
    return self.Arena:QueueForArena(arenaType)
end

-- Stop auto-arena
function Framework:StopAutoArena()
    if self.Arena:GetState() == self.Arena.States.IN_QUEUE then
        self.Arena:LeaveQueue()
    end
    self.Movement:Stop()
end

-- Check if in arena
function Framework:IsInArena()
    return self.Arena:IsInArena()
end

-- Get framework status
function Framework:GetStatus()
    return {
        arena = self.Arena:GetState(),
        movement = self.Movement:GetState(),
        combat = self.Combat:GetState(),
        initialized = self.initialized
    }
end

return Framework