---
title: "WorldToScreen - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/WorldToScreen/"
scraped_at: "2025-06-30T02:53:23.712Z"
---

# WorldToScreen

Returns the screen position of a world coordinate.

```lua
WorldToScreen(x, y, z) : x, yWorldToScreen(x, y, z) : x, y
```

The `x` and `y` values are values between -1 and 1, (0,0) being the center of the screen, (-1,1) being the bottom left.

Example

Sets the mouseover unit to the target.

```lua
local x, y = WorldToScreen(x, y, z)local x, y = WorldToScreen(x, y, z)
```