---
title: "ObjectRawRotation - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectRawRotation/"
scraped_at: "2025-06-30T02:53:10.430Z"
---

# ObjectRawRotation

Returns the raw rotation of a [`WowGameObject`](../WowGameObject/) in radians.

```lua
ObjectRawRotation(--[[(1)]]objectReference) : rotation | falseObjectRawRotation(--[[(1)]]objectReference) : rotation | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the players rotation.

```lua
local rotation = ObjectRawRotation('player')local rotation = ObjectRawRotation('player')
```

Do something with the rotations of all objects.

```lua
for i, object in ipairs(Objects()) do    local rotation = ObjectRawRotation(object)    -- do something with rotationendfor i, object in ipairs(Objects()) do
    local rotation = ObjectRawRotation(object)
    -- do something with rotation
end
```