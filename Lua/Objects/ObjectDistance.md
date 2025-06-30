---
title: "ObjectDistance - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectDistance/"
scraped_at: "2025-06-30T02:53:07.743Z"
---

# ObjectDistance

Returns the distance between two [`WowGameObject`](../WowGameObject/)'s.

```lua
ObjectDistance(--[[(1)]]objectReference, --[[(1)]]objectReference) : distance | falseObjectDistance(--[[(1)]]objectReference, --[[(1)]]objectReference) : distance | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the distance between the player and the target.

```lua
local distance = ObjectDistance('player', 'target')local distance = ObjectDistance('player', 'target')
```

Do something with the distance between the player and all objects.

```lua
for i, object in ipairs(Objects()) do    local distance = ObjectDistance('player', object)    -- do something with distanceendfor i, object in ipairs(Objects()) do
    local distance = ObjectDistance('player', object)
    -- do something with distance
end
```