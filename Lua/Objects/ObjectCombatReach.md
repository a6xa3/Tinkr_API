---
title: "ObjectCombatReach - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectCombatReach/"
scraped_at: "2025-06-30T02:53:07.156Z"
---

# ObjectCombatReach

Returns the combat reach of a [`WowGameObject`](../WowGameObject/).

This is how far the unit can account an object from its position.

```lua
ObjectCombatReach(--[[(1)]]objectReference) : reach | falseObjectCombatReach(--[[(1)]]objectReference) : reach | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the players current reach.

```lua
local reach = ObjectCombatReach('player')local reach = ObjectCombatReach('player')
```

Do something with the reach of all objects.

```lua
for i, object in ipairs(Objects()) do    local reach = ObjectCombatReach(object)    -- do something with reachendfor i, object in ipairs(Objects()) do
    local reach = ObjectCombatReach(object)
    -- do something with reach
end
```