---
title: "ObjectIsOutdoors - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectIsOutdoors/"
scraped_at: "2025-06-30T02:53:08.744Z"
---

# ObjectIsOutdoors

Check if a [`WowGameObject`](../WowGameObject/) is outside (AKA not in a cave).

```lua
ObjectIsOutdoors(--[[(1)]]objectReference) : booleanObjectIsOutdoors(--[[(1)]]objectReference) : boolean
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if an object is outside.

```lua
local isoutside = ObjectIsOutdoors('target')if isoutside then    print("OMG The sun")endlocal isoutside = ObjectIsOutdoors('target')
if isoutside then
    print("OMG The sun")
end
```