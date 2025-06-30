---
title: "ObjectPosition - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectPosition/"
scraped_at: "2025-06-30T02:53:09.975Z"
---

# ObjectPosition

Returns the position of a [`WowGameObject`](../WowGameObject/).

```lua
ObjectPosition(--[[(1)]]objectReference) : x, y, zObjectPosition(--[[(1)]]objectReference) : x, y, z
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the players current position.

```lua
local x, y, z = ObjectPosition('player')local x, y, z = ObjectPosition('player')
```

Do something with the position of all objects.

```lua
for i, object in ipairs(Objects()) do    local x, y, z = ObjectPosition(object)    -- do something with x, y, zendfor i, object in ipairs(Objects()) do
    local x, y, z = ObjectPosition(object)
    -- do something with x, y, z
end
```