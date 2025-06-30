---
title: "ObjectRawPosition - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectRawPosition/"
scraped_at: "2025-06-30T02:53:10.227Z"
---

# ObjectRawPosition

Returns the raw position of a [`WowGameObject`](../WowGameObject/).

```lua
ObjectRawPosition(--[[(1)]]objectReference) : x, y, zObjectRawPosition(--[[(1)]]objectReference) : x, y, z
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the players current position.

```lua
local x, y, z = ObjectRawPosition('player')local x, y, z = ObjectRawPosition('player')
```

Do something with the position of all objects.

```lua
for i, object in ipairs(Objects()) do    local x, y, z = ObjectRawPosition(object)    -- do something with x, y, zendfor i, object in ipairs(Objects()) do
    local x, y, z = ObjectRawPosition(object)
    -- do something with x, y, z
end
```