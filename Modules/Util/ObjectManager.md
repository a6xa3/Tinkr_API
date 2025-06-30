---
title: "ObjectManager - Tinkr API Documentation"
url: "https://docs.tinkr.site/Modules/Util/ObjectManager/"
scraped_at: "2025-06-30T02:53:30.925Z"
---

# ObjectManager

`Util.Modules.ObjectManager`

```lua
if Tinkr.classic then    ObjectManager.Types = {        Object = 0,        Item = 1,        Container = 2,        Unit = 3,        Player = 4,        ActivePlayer = 5,        GameObject = 6,        DynamicObject = 7,        Corpse = 8,        AreaTrigger = 9,        SceneObject = 10,        ConversationData = 11    }    ObjectManager.TypeNames = {        [0] = "Object",        [1] = "Item",        [2] = "Container",        [3] = "Unit",        [4] = "Player",        [5] = "ActivePlayer",        [6] = "GameObject",        [7] = "DynamicObject",        [8] = "Corpse",        [9] = "AreaTrigger",        [10] = "SceneObject",        [11] = "ConversationData"    }    ObjectManager.CreatureTypes = {        Beast = 1,        Dragonkin = 2,        Demon = 3,        Elemental = 4,        Giant = 5,        Undead = 6,        Humanoid = 7,        Critter = 8,        Mechanical = 9,        NOT_SPECIFIED = 10,        Totem = 11,        NON_COMBAT_PET = 12,        GAS_CLOUD = 13    }else    ObjectManager.Types = {        Object = 0,        Item = 1,        Container = 2,        AzeriteEmpoweredItem = 3,        AzeriteItem = 4,        Unit = 5,        Player = 6,        ActivePlayer = 7,        GameObject = 8,        DynamicObject = 9,        Corpse = 10,        AreaTrigger = 11,        SceneObject = 12,        ConversationData = 13    }    ObjectManager.TypeNames = {        [0] = "Object",        [1] = "Item",        [2] = "Container",        [3] = "AzeriteEmpoweredItem",        [4] = "AzeriteItem",        [5] = "Unit",        [6] = "Player",        [7] = "ActivePlayer",        [8] = "GameObject",        [9] = "DynamicObject",        [10] = "Corpse",        [11] = "AreaTrigger",        [12] = "SceneObject",        [13] = "ConversationData"    }    ObjectManager.CreatureTypes = {        Beast = 1,        Dragonkin = 2,        Demon = 3,        Elemental = 4,        Giant = 5,        Undead = 6,        Humanoid = 7,        CActorMechanical = 9,        NOT_SPECIFIED = 10,        Totem = 11,        NON_COMBAT_PET = 12,        GAS_CLOUD = 13,        WILD_PET = 14,        Aberration = 15    }end function ObjectManager:Filter(ObjectType)function ObjectManager:UnitCanBeLooted(object)function ObjectManager:UnitCanBeSkinned(object)function ObjectManager:hasLineOfSight(objectA, objectB)function ObjectManager:Objects(ObjectType)function ObjectManager:Missiles()if Tinkr.classic then
    ObjectManager.Types = {
        Object = 0,
        Item = 1,
        Container = 2,
        Unit = 3,
        Player = 4,
        ActivePlayer = 5,
        GameObject = 6,
        DynamicObject = 7,
        Corpse = 8,
        AreaTrigger = 9,
        SceneObject = 10,
        ConversationData = 11
    }
    ObjectManager.TypeNames = {
        [0] = "Object",
        [1] = "Item",
        [2] = "Container",
        [3] = "Unit",
        [4] = "Player",
        [5] = "ActivePlayer",
        [6] = "GameObject",
        [7] = "DynamicObject",
        [8] = "Corpse",
        [9] = "AreaTrigger",
        [10] = "SceneObject",
        [11] = "ConversationData"
    }
    ObjectManager.CreatureTypes = {
        Beast = 1,
        Dragonkin = 2,
        Demon = 3,
        Elemental = 4,
        Giant = 5,
        Undead = 6,
        Humanoid = 7,
        Critter = 8,
        Mechanical = 9,
        NOT_SPECIFIED = 10,
        Totem = 11,
        NON_COMBAT_PET = 12,
        GAS_CLOUD = 13
    }
else
    ObjectManager.Types = {
        Object = 0,
        Item = 1,
        Container = 2,
        AzeriteEmpoweredItem = 3,
        AzeriteItem = 4,
        Unit = 5,
        Player = 6,
        ActivePlayer = 7,
        GameObject = 8,
        DynamicObject = 9,
        Corpse = 10,
        AreaTrigger = 11,
        SceneObject = 12,
        ConversationData = 13
    }
    ObjectManager.TypeNames = {
        [0] = "Object",
        [1] = "Item",
        [2] = "Container",
        [3] = "AzeriteEmpoweredItem",
        [4] = "AzeriteItem",
        [5] = "Unit",
        [6] = "Player",
        [7] = "ActivePlayer",
        [8] = "GameObject",
        [9] = "DynamicObject",
        [10] = "Corpse",
        [11] = "AreaTrigger",
        [12] = "SceneObject",
        [13] = "ConversationData"
    }
    ObjectManager.CreatureTypes = {
        Beast = 1,
        Dragonkin = 2,
        Demon = 3,
        Elemental = 4,
        Giant = 5,
        Undead = 6,
        Humanoid = 7,
        CActorMechanical = 9,
        NOT_SPECIFIED = 10,
        Totem = 11,
        NON_COMBAT_PET = 12,
        GAS_CLOUD = 13,
        WILD_PET = 14,
        Aberration = 15
    }
end

function ObjectManager:Filter(ObjectType)
function ObjectManager:UnitCanBeLooted(object)
function ObjectManager:UnitCanBeSkinned(object)
function ObjectManager:hasLineOfSight(objectA, objectB)
function ObjectManager:Objects(ObjectType)
function ObjectManager:Missiles()
```