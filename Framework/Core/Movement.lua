local Tinkr = ...
local Movement = {}

-- Movement states
Movement.States = {
    IDLE = "IDLE",
    MOVING_TO_TARGET = "MOVING_TO_TARGET", 
    FOLLOWING = "FOLLOWING",
    KITING = "KITING",
    POSITIONING = "POSITIONING"
}

Movement.currentState = Movement.States.IDLE
Movement.lastPosition = {x = 0, y = 0, z = 0}
Movement.stuckTimer = 0
Movement.stuckThreshold = 3 -- seconds before considering stuck

-- Initialize movement system
function Movement:Initialize()
    self.currentState = self.States.IDLE
    local x, y, z = ObjectPosition('player')
    self.lastPosition = {x = x, y = y, z = z}
    print("Movement system initialized")
end

-- Check if player is stuck
function Movement:IsStuck()
    local x, y, z = ObjectPosition('player')
    local distance = FastDistance(x, y, z, self.lastPosition.x, self.lastPosition.y, self.lastPosition.z)
    
    if distance < 1 and moving('player') then
        self.stuckTimer = self.stuckTimer + 0.1
        return self.stuckTimer > self.stuckThreshold
    else
        self.stuckTimer = 0
        self.lastPosition = {x = x, y = y, z = z}
        return false
    end
end

-- Move to target
function Movement:MoveToTarget(unit)
    if not exists(unit) then return false end
    
    local x, y, z = ObjectPosition(unit)
    if x and y and z then
        MoveTo(x, y, z)
        self.currentState = self.States.MOVING_TO_TARGET
        return true
    end
    return false
end

-- Follow unit
function Movement:Follow(unit)
    if not exists(unit) then return false end
    
    local distance = ObjectDistance('player', unit)
    if distance > 8 then
        self:MoveToTarget(unit)
        self.currentState = self.States.FOLLOWING
        return true
    end
    return false
end

-- Kite from target
function Movement:KiteFrom(unit, minDistance)
    if not exists(unit) then return false end
    
    minDistance = minDistance or 15
    local distance = ObjectDistance('player', unit)
    
    if distance < minDistance then
        local px, py, pz = ObjectPosition('player')
        local tx, ty, tz = ObjectPosition(unit)
        
        -- Calculate opposite direction
        local dx = px - tx
        local dy = py - ty
        local length = math.sqrt(dx*dx + dy*dy)
        
        if length > 0 then
            dx = dx / length
            dy = dy / length
            
            -- Move away
            local newX = px + dx * 10
            local newY = py + dy * 10
            MoveTo(newX, newY, pz)
            
            self.currentState = self.States.KITING
            return true
        end
    end
    return false
end

-- Stop movement
function Movement:Stop()
    MoveForwardStop()
    MoveBackwardStop()
    StrafeLeftStop()
    StrafeRightStop()
    self.currentState = self.States.IDLE
end

-- Update movement system
function Movement:Update()
    if self:IsStuck() then
        -- Try to unstuck
        local angle = math.random() * math.pi * 2
        local px, py, pz = ObjectPosition('player')
        local newX = px + math.cos(angle) * 5
        local newY = py + math.sin(angle) * 5
        MoveTo(newX, newY, pz)
        print("Player stuck, trying to move...")
    end
end

-- Get current state
function Movement:GetState()
    return self.currentState
end

return Movement