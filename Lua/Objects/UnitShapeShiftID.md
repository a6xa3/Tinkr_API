---
title: "UnitShapeShiftID - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/UnitShapeShiftID/"
scraped_at: "2025-06-30T02:53:17.312Z"
---

# UnitShapeShiftID

Returns a [`WowGameObject`](../WowGameObject/) shapeshift ID.

```lua
UnitShapeShiftID(--[[(1)]]objectReference) : booleanUnitShapeShiftID(--[[(1)]]objectReference) : boolean
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if the object is shapeshifted.

```lua
local isshifted = UnitShapeShiftID('target')if isshifted then    print("Druids and warriors are not cool!")endlocal isshifted = UnitShapeShiftID('target')
if isshifted then
    print("Druids and warriors are not cool!")
end
```