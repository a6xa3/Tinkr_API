---
title: "ScreenToWorld - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/ScreenToWorld/"
scraped_at: "2025-06-30T02:53:22.926Z"
---

# ScreenToWorld

Returns the world position of a screen coordinate.

```lua
ScreenToWorld(x, y, hitFlags) : x, y, zScreenToWorld(x, y, hitFlags) : x, y, z
```

The `x` and `y` paramaters should be between -1 and 1, (0,0) being the center of the screen, (-1,1) being the bottom left.

Example

Sets the mouseover unit to the target.

```lua
local sx, sy = 0, 0local hitFlags = bit.bor(0x1, 0x10, 0x100, 0x100000)local x, y, z = ScreenToWorld(sx, sy, hitFlags)local sx, sy = 0, 0
local hitFlags = bit.bor(0x1, 0x10, 0x100, 0x100000)
local x, y, z = ScreenToWorld(sx, sy, hitFlags)
```

Info

**Hit Flags:**

```lua
M2Collision = 0x1M2Render = 0x2WMOCollision = 0x10WMORender = 0x20Terrain = 0x100WaterWalkableLiquid = 0x10000Liquid = 0x20000EntityCollision = 0x100000Unknown = 0x200000M2Collision = 0x1
M2Render = 0x2
WMOCollision = 0x10
WMORender = 0x20
Terrain = 0x100
WaterWalkableLiquid = 0x10000
Liquid = 0x20000
EntityCollision = 0x100000
Unknown = 0x200000
```