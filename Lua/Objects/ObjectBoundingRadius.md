---
title: "ObjectBoundingRadius - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectBoundingRadius/"
scraped_at: "2025-06-30T02:53:06.573Z"
---

# ObjectBoundingRadius

Returns the bounding radius of a [`WowGameObject`](../WowGameObject/) in radians.

This is the size of the object used for calculating attack range.

```lua
ObjectBoundingRadius(--[[(1)]]objectReference) : radius | falseObjectBoundingRadius(--[[(1)]]objectReference) : radius | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the players radius.

```lua
local radius = ObjectBoundingRadius('player')local radius = ObjectBoundingRadius('player')
```

Do something with the radius of all objects.

```lua
for i, object in ipairs(Objects()) do    local radius = ObjectBoundingRadius(object)    -- do something with radiusendfor i, object in ipairs(Objects()) do
    local radius = ObjectBoundingRadius(object)
    -- do something with radius
end
```