---
title: "ObjectRotation - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectRotation/"
scraped_at: "2025-06-30T02:53:11.773Z"
---

# ObjectRotation

Returns the rotation of a [`WowGameObject`](../WowGameObject/) in radians.

```lua
ObjectRotation(--[[(1)]]objectReference) : rotation | falseObjectRotation(--[[(1)]]objectReference) : rotation | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the players rotation.

```lua
local rotation = ObjectRotation('player')local rotation = ObjectRotation('player')
```

Do something with the rotations of all objects.

```lua
for i, object in ipairs(Objects()) do    local rotation = ObjectRotation(object)    -- do something with rotationendfor i, object in ipairs(Objects()) do
    local rotation = ObjectRotation(object)
    -- do something with rotation
end
```