---
title: "FastDistance2D - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/FastDistance2D/"
scraped_at: "2025-06-30T02:53:19.613Z"
---

# FastDistance2D

Calculates the 2D distance in C land quicker than it can be done in Lua.

```lua
FastDistance2D(x1, y1, x2, y2) : distanceFastDistance2D(x1, y1, x2, y2) : distance
```

Example

Checks the 2D distance between the player and target.

```lua
local x1, y1, z1 = ObjectPosition('player')local x2, y2, z2 = ObjectPosition('target')local dist = FastDistance2D(x1, y1, x2, y2)local x1, y1, z1 = ObjectPosition('player')
local x2, y2, z2 = ObjectPosition('target')
local dist = FastDistance2D(x1, y1, x2, y2)
```