---
title: "UnitIsMounted - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/UnitIsMounted/"
scraped_at: "2025-06-30T02:53:15.503Z"
---

# UnitIsMounted

Check if a [`WowGameObject`](../WowGameObject/) is mounted.

```lua
UnitIsMounted(--[[(1)]]objectReference) : booleanUnitIsMounted(--[[(1)]]objectReference) : boolean
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if an object is mounted.

```lua
local ismounted = UnitIsMounted('target')if ismounted then    print("Dismount that alliance scum")endlocal ismounted = UnitIsMounted('target')
if ismounted then
    print("Dismount that alliance scum")
end
```