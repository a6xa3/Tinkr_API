---
title: "ObjectIsSubmerged - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectIsSubmerged/"
scraped_at: "2025-06-30T02:53:08.936Z"
---

# ObjectIsSubmerged

Check if a [`WowGameObject`](../WowGameObject/) is submerged (AKA in the water).

```lua
ObjectIsSubmerged(--[[(1)]]objectReference) : booleanObjectIsSubmerged(--[[(1)]]objectReference) : boolean
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if an object is submerged.

```lua
local issubmerged = ObjectIsSubmerged('target')if issubmerged then    print("OMG The wet")endlocal issubmerged = ObjectIsSubmerged('target')
if issubmerged then
    print("OMG The wet")
end
```