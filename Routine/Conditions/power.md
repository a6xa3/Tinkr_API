---
title: "power - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/power/"
scraped_at: "2025-06-30T02:53:58.879Z"
---

# power

Returns the resource level of the given power type.

```lua
power([powerType, unitID]) : integerpower([powerType, unitID]) : integer
```

1.  See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId).
2.  powerType - Number (optional), The power type of the unit whose power should be returned
3.  Use of object is also supported for unit / unit.

Example

```lua
local playerAstral = power(PowerType.LunarPower)local playerMana = power()local targetMana = power(PowerType.Mana, 'target')local playerAstral = power(PowerType.LunarPower)
local playerMana = power()
local targetMana = power(PowerType.Mana, 'target')
```

```
local Data = {    PowerType = {    Mana = 0,    Rage = 1,    Focus = 2,    Energy = 3,    ComboPoints = 4,    Runes = 5,    RunicPower = 6,    SoulShards = 7,    LunarPower = 8,    HolyPower = 9,    Alternate = 10,    Maelstrom = 11,    Chi = 12,    Insanity = 13,    Obsolete = 14,    Obsolete2 = 15,    ArcaneCharges = 16,    Fury = 17,    Pain = 18}local Data = {
    PowerType = {
    Mana = 0,
    Rage = 1,
    Focus = 2,
    Energy = 3,
    ComboPoints = 4,
    Runes = 5,
    RunicPower = 6,
    SoulShards = 7,
    LunarPower = 8,
    HolyPower = 9,
    Alternate = 10,
    Maelstrom = 11,
    Chi = 12,
    Insanity = 13,
    Obsolete = 14,
    Obsolete2 = 15,
    ArcaneCharges = 16,
    Fury = 17,
    Pain = 18
}
```

Note