---
title: "FastDistance - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/FastDistance/"
scraped_at: "2025-06-30T02:53:19.413Z"
---

# FastDistance

Calculates the distance in C land quicker than it can be done in Lua.

```lua
FastDistance(x1, y1, z1, x2, y2, z2) : distanceFastDistance(x1, y1, z1, x2, y2, z2) : distance
```

Example

Checks the distance between the player and target.

```lua
local x1, y1, z1 = ObjectPosition('player')local x2, y2, z2 = ObjectPosition('target')local dist = FastDistance(x1, y1, z1, x2, y2, z2)local x1, y1, z1 = ObjectPosition('player')
local x2, y2, z2 = ObjectPosition('target')
local dist = FastDistance(x1, y1, z1, x2, y2, z2)
```