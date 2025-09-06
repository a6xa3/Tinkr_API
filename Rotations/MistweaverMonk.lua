local Tinkr = ...
local Routine = Tinkr.Routine

-- Load framework
local Framework = Tinkr:require('Framework.Framework')

-- Mistweaver Monk spells
local Spells = {
    -- Healing
    Vivify = 116670,
    EssenceFont = 191837,
    RenewingMist = 115151,
    Envelop = 124682,
    Revival = 115310,
    LifeCocoon = 116849,
    
    -- Damage
    TigerPalm = 100780,
    BlackoutKick = 100784,
    RisingSunKick = 107428,
    SpinningCraneKick = 101546,
    CracklingJadeLightning = 117952,
    
    -- Utility
    Roll = 109132,
    Transcendence = 101643,
    TranscendenceTransfer = 119996,
    Paralysis = 115078,
    LegSweep = 119381,
    
    -- Cooldowns
    ThunderFocusTea = 116680,
    InvokeYulon = 123904,
    Fortify = 243435,
}

-- Configuration
local Config = {
    autoArena = true,
    arenaType = Framework.Arena.Types.ARENA_2V2,
    healThreshold = 70,
    emergencyHealThreshold = 30,
    manaThreshold = 20,
    useOffensiveSpells = true,
    useCooldowns = true,
}

-- Mistweaver Monk rotation
local function MistweaverRotation()
    -- Update framework
    Framework:Update()
    
    -- Auto-queue for arena if enabled
    if Config.autoArena and not Framework:IsInArena() then
        if Framework.Arena:GetState() == Framework.Arena.States.IDLE then
            Framework:StartAutoArena(Config.arenaType)
        end
        return
    end
    
    -- Don't do anything if not in game or dead
    if not IsInGame() or not alive('player') then
        return
    end
    
    -- Emergency healing
    if EmergencyHealing() then return end
    
    -- Regular healing rotation
    if HealingRotation() then return end
    
    -- Offensive rotation if no healing needed
    if Config.useOffensiveSpells then
        if OffensiveRotation() then return end
    end
    
    -- Movement and positioning
    MovementLogic()
end

-- Emergency healing logic
function EmergencyHealing()
    local healTarget = Framework.Combat:GetHealTarget()
    
    if healTarget and health(healTarget) < Config.emergencyHealThreshold then
        -- Life Cocoon for critical health
        if health(healTarget) < 20 and castable(Spells.LifeCocoon, healTarget) then
            return cast(Spells.LifeCocoon, healTarget)
        end
        
        -- Revival for group emergency
        local lowHealthCount = 0
        for i = 1, 4 do
            local unit = "party" .. i
            if exists(unit) and health(unit) < 40 then
                lowHealthCount = lowHealthCount + 1
            end
        end
        if health('player') < 40 then lowHealthCount = lowHealthCount + 1 end
        
        if lowHealthCount >= 2 and castable(Spells.Revival) then
            return cast(Spells.Revival)
        end
        
        -- Emergency Vivify
        if castable(Spells.Vivify, healTarget) then
            return cast(Spells.Vivify, healTarget)
        end
    end
    
    return false
end

-- Healing rotation
function HealingRotation()
    local healTarget = Framework.Combat:GetHealTarget()
    
    if not healTarget then return false end
    
    local targetHealth = health(healTarget)
    
    -- Thunder Focus Tea for enhanced healing
    if Config.useCooldowns and targetHealth < 50 and castable(Spells.ThunderFocusTea) then
        cast(Spells.ThunderFocusTea)
    end
    
    -- Renewing Mist for HoT
    if not buff(Spells.RenewingMist, healTarget) and castable(Spells.RenewingMist, healTarget) then
        return cast(Spells.RenewingMist, healTarget)
    end
    
    -- Enveloping Mist for strong single target heal
    if targetHealth < 60 and castable(Spells.Envelop, healTarget) then
        return cast(Spells.Envelop, healTarget)
    end
    
    -- Vivify as main heal
    if targetHealth < Config.healThreshold and castable(Spells.Vivify, healTarget) then
        return cast(Spells.Vivify, healTarget)
    end
    
    -- Essence Font for group healing
    local injuredCount = 0
    for i = 1, 4 do
        local unit = "party" .. i
        if exists(unit) and health(unit) < 80 then
            injuredCount = injuredCount + 1
        end
    end
    if health('player') < 80 then injuredCount = injuredCount + 1 end
    
    if injuredCount >= 2 and castable(Spells.EssenceFont) then
        return cast(Spells.EssenceFont)
    end
    
    return false
end

-- Offensive rotation
function OffensiveRotation()
    local target = Framework.Combat.primaryTarget
    if not target or not alive(target) or not enemy(target) then
        return false
    end
    
    -- Ensure we have a target selected
    if not exists('target') or ObjectGUID('target') ~= ObjectGUID(target) then
        SetTargetObject(Object(target))
    end
    
    -- Interrupt casting enemies
    if interrupt() and castable(Spells.LegSweep, target) then
        return cast(Spells.LegSweep, target)
    end
    
    -- Use cooldowns
    if Config.useCooldowns and castable(Spells.InvokeYulon) then
        cast(Spells.InvokeYulon)
    end
    
    -- Damage rotation
    if castable(Spells.RisingSunKick, target) then
        return cast(Spells.RisingSunKick, target)
    end
    
    if castable(Spells.BlackoutKick, target) then
        return cast(Spells.BlackoutKick, target)
    end
    
    if castable(Spells.TigerPalm, target) then
        return cast(Spells.TigerPalm, target)
    end
    
    -- Ranged damage if too far
    if ObjectDistance('player', target) > 8 and castable(Spells.CracklingJadeLightning, target) then
        return cast(Spells.CracklingJadeLightning, target)
    end
    
    return false
end

-- Movement logic
function MovementLogic()
    if not Framework:IsInArena() then return end
    
    -- Stay with team
    local closestAlly = nil
    local closestDistance = 999
    
    for i = 1, 4 do
        local unit = "party" .. i
        if exists(unit) and alive(unit) then
            local distance = ObjectDistance('player', unit)
            if distance < closestDistance then
                closestDistance = distance
                closestAlly = unit
            end
        end
    end
    
    -- Follow ally if too far
    if closestAlly and closestDistance > 15 then
        Framework.Movement:Follow(closestAlly)
    end
    
    -- Kite if in danger
    if Framework.Combat:IsInDanger('player') then
        local nearestEnemy = nil
        local nearestDistance = 999
        
        for _, enemy in ipairs(Framework.Combat.enemies) do
            local distance = ObjectDistance('player', enemy)
            if distance < nearestDistance then
                nearestDistance = distance
                nearestEnemy = enemy
            end
        end
        
        if nearestEnemy and nearestDistance < 8 then
            Framework.Movement:KiteFrom(nearestEnemy, 15)
        end
    end
end

-- Register the routine
Routine:RegisterRoutine(MistweaverRotation, Routine.Classes.Monk, "Mistweaver Auto Arena")

-- Commands for controlling the bot
local Commands = Tinkr.Util.Commands
local BotCommands = Commands:New("mwbot")

BotCommands:Register("start", function()
    Config.autoArena = true
    Framework:StartAutoArena(Config.arenaType)
    print("Mistweaver bot started!")
end, "Start the Mistweaver arena bot")

BotCommands:Register("stop", function()
    Config.autoArena = false
    Framework:StopAutoArena()
    print("Mistweaver bot stopped!")
end, "Stop the Mistweaver arena bot")

BotCommands:Register("status", function()
    local status = Framework:GetStatus()
    print("Bot Status:")
    print("Arena: " .. status.arena)
    print("Movement: " .. status.movement) 
    print("Combat: " .. status.combat)
    print("Auto Arena: " .. tostring(Config.autoArena))
end, "Show bot status")

BotCommands:Register("config", function(setting, value)
    if setting == "heal" then
        Config.healThreshold = tonumber(value) or Config.healThreshold
        print("Heal threshold set to: " .. Config.healThreshold)
    elseif setting == "emergency" then
        Config.emergencyHealThreshold = tonumber(value) or Config.emergencyHealThreshold
        print("Emergency heal threshold set to: " .. Config.emergencyHealThreshold)
    elseif setting == "offensive" then
        Config.useOffensiveSpells = value == "true"
        print("Offensive spells: " .. tostring(Config.useOffensiveSpells))
    elseif setting == "cooldowns" then
        Config.useCooldowns = value == "true"
        print("Use cooldowns: " .. tostring(Config.useCooldowns))
    else
        print("Available settings: heal, emergency, offensive, cooldowns")
    end
end, "Configure bot settings", {"setting", "value"})

print("Mistweaver Monk Arena Bot loaded!")
print("Commands: /mwbot start, /mwbot stop, /mwbot status, /mwbot config")