---
title: "melee - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/melee/"
scraped_at: "2025-06-30T02:53:55.834Z"
---

# melee

Tests that a unit is within melee of another unit, defaults to the player and the players target.

```lua
melee(target, source) : booleanmelee(target, source) : boolean
```

Example

```lua
if melee('target', 'pet') or melee() then    -- My pet or me is in meleeendif melee('target', 'pet') or melee() then
    -- My pet or me is in melee
end
```