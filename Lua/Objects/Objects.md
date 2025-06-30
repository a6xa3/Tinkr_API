---
title: "Objects - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/Objects/"
scraped_at: "2025-06-30T02:53:13.980Z"
---

# Objects

Gets a list of all objects.

```lua
Objects(--[[(1)]][filterTypeID]) : { WowGameObject, ... }Objects(--[[(1)]][filterTypeID]) : { WowGameObject, ... }
```

1.  `filterTypeID` can be used to filter only specific [WowGameObject Types](../WowGameObject/#wowgameobject-types) back.

Example

Iterate through all [`WowGameObject`](../WowGameObject/)'s.

```lua
local objects = Objects() for i, object in ipairs(objects) do    -- handle objectendlocal objects = Objects()

for i, object in ipairs(objects) do
    -- handle object
end
```

Note

All `WowGameObject` references are ephemeral, and should never be stored for use later. **Use the object inside the context of the iteration or directly after obtaining it.** There is no guarantee on an objects lifetime and they will be garbage collected as soon as possible.