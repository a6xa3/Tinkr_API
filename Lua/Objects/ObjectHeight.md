---
title: "ObjectHeight - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectHeight/"
scraped_at: "2025-06-30T02:53:08.327Z"
---

# ObjectHeight

Returns the hight of a [`WowGameObject`](../WowGameObject/).

```lua
ObjectHeight(--[[(1)]]objectReference) : height | falseObjectHeight(--[[(1)]]objectReference) : height | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the players height.

```lua
local height = ObjectHeight('player')local height = ObjectHeight('player')
```

Do something with the heights of all objects.

```lua
for i, object in ipairs(Objects()) do    local height = ObjectHeight(object)    -- do something with heightendfor i, object in ipairs(Objects()) do
    local height = ObjectHeight(object)
    -- do something with height
end
```