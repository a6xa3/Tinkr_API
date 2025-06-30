---
title: "ObjectName - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectName/"
scraped_at: "2025-06-30T02:53:09.707Z"
---

# ObjectName

Returns the name of a [`WowGameObject`](../WowGameObject/).

```lua
ObjectName(--[[(1)]]objectReference) : name | falseObjectName(--[[(1)]]objectReference) : name | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the players name.

```lua
local name = ObjectName('player')local name = ObjectName('player')
```

Do something with the names of all objects.

```lua
for i, object in ipairs(Objects()) do    local name = ObjectName(object)    -- do something with nameendfor i, object in ipairs(Objects()) do
    local name = ObjectName(object)
    -- do something with name
end
```