---
title: "UnitIsSitting - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/UnitIsSitting/"
scraped_at: "2025-06-30T02:53:15.726Z"
---

# UnitIsSitting

Check if a [`WowGameObject`](../WowGameObject/) is sitting.

```lua
UnitIsSitting(--[[(1)]]objectReference) : booleanUnitIsSitting(--[[(1)]]objectReference) : boolean
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if an object is sitting.

```lua
local issitting = UnitIsSitting('target')if issitting then    print("Stand up you lazy bum!")endlocal issitting = UnitIsSitting('target')
if issitting then
    print("Stand up you lazy bum!")
end
```