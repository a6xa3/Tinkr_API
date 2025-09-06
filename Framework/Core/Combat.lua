local Tinkr = ...
local Combat = {}

-- Combat states
Combat.States = {
    IDLE = "IDLE",
    ENGAGING = "ENGAGING",
    IN_COMBAT = "IN_COMBAT", 
    DEFENSIVE = "DEFENSIVE",
    RETREATING = "RETREATING"
}

Combat.currentState = Combat.States.IDLE
Combat.primaryTarget = nil
Combat.enemies = {}
Combat.allies = {}

-- Initialize combat system
function Combat:Initialize()
    self.currentState = self.States.IDLE
    print("Combat system initialized")
end

-- Update enemy and ally lists
function Combat:UpdateUnits()
    self.enemies = {}
    self.allies = {}
    
    -- Check arena opponents
    for i = 1, 5 do
        local unit = "arena" .. i
        if exists(unit) and alive(unit) then
            table.insert(self.enemies, unit)
        end
    end
    
    -- Check party members
    if GetNumGroupMembers() > 0 then
        for i = 1, 4 do
            local unit = "party" .. i
            if exists(unit) and alive(unit) then
                table.insert(self.allies, unit)
            end
        end
    end
    
    -- Add player to allies
    table.insert(self.allies, "player")
end

-- Get best target
function Combat:GetBestTarget()
    self:UpdateUnits()
    
    local bestTarget = nil
    local bestPriority = 0
    
    for _, enemy in ipairs(self.enemies) do
        if alive(enemy) and cansee('player', enemy) then
            local priority = self:GetTargetPriority(enemy)
            if priority > bestPriority then
                bestPriority = priority
                bestTarget = enemy
            end
        end
    end
    
    return bestTarget
end

-- Calculate target priority
function Combat:GetTargetPriority(unit)
    local priority = 0
    local distance = ObjectDistance('player', unit)
    local healthPercent = health(unit)
    
    -- Closer targets have higher priority
    priority = priority + (40 - math.min(distance, 40))
    
    -- Lower health targets have higher priority
    priority = priority + (100 - healthPercent) * 0.5
    
    -- Casting targets have higher priority
    if casting(unit) then
        priority = priority + 50
    end
    
    -- Specific class priorities
    local class = UnitClass(unit)
    if class == "PRIEST" or class == "PALADIN" or class == "SHAMAN" then
        priority = priority + 30 -- Healers
    elseif class == "MAGE" or class == "WARLOCK" then
        priority = priority + 20 -- Casters
    end
    
    return priority
end

-- Get unit that needs healing most
function Combat:GetHealTarget()
    self:UpdateUnits()
    
    local healTarget = nil
    local lowestHealth = 100
    
    for _, ally in ipairs(self.allies) do
        if alive(ally) then
            local allyHealth = health(ally)
            if allyHealth < lowestHealth and allyHealth < 80 then
                lowestHealth = allyHealth
                healTarget = ally
            end
        end
    end
    
    return healTarget
end

-- Check if unit is in danger
function Combat:IsInDanger(unit)
    unit = unit or 'player'
    local unitHealth = health(unit)
    
    -- Low health
    if unitHealth < 30 then
        return true
    end
    
    -- Multiple enemies nearby
    local nearbyEnemies = 0
    for _, enemy in ipairs(self.enemies) do
        if ObjectDistance(unit, enemy) < 10 then
            nearbyEnemies = nearbyEnemies + 1
        end
    end
    
    return nearbyEnemies >= 2
end

-- Update combat state
function Combat:Update()
    if combat('player') then
        if self.currentState == Combat.States.IDLE then
            self.currentState = Combat.States.IN_COMBAT
        end
    else
        if self.currentState == Combat.States.IN_COMBAT then
            self.currentState = Combat.States.IDLE
        end
    end
    
    -- Update primary target
    self.primaryTarget = self:GetBestTarget()
    if self.primaryTarget and exists('target') and ObjectGUID('target') ~= ObjectGUID(self.primaryTarget) then
        SetTargetObject(Object(self.primaryTarget))
    end
end

-- Get current state
function Combat:GetState()
    return self.currentState
end

return Combat