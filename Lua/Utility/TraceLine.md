---
title: "TraceLine - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/TraceLine/"
scraped_at: "2025-06-30T02:53:23.509Z"
---

# TraceLine

Returns the position of the camera.

```lua
TraceLine(x1, y1, z1, x2, y2, z2, hitFlags) : x, y, zTraceLine(x1, y1, z1, x2, y2, z2, hitFlags) : x, y, z
```

Example

Checks the line of sight between the player and target.

```lua
local x1, y1, z1 = ObjectPosition('player')local x2, y2, z2 = ObjectPosition('target')local hitFlags = bit.bor(0x1, 0x10, 0x100, 0x100000)local x, y, z = TraceLine(x1, y1, z1, x2, y2, z2, hitFlags)local x1, y1, z1 = ObjectPosition('player')
local x2, y2, z2 = ObjectPosition('target')
local hitFlags = bit.bor(0x1, 0x10, 0x100, 0x100000)
local x, y, z = TraceLine(x1, y1, z1, x2, y2, z2, hitFlags)
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