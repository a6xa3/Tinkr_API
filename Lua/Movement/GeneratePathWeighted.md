---
title: "GeneratePathWeighted - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Movement/GeneratePathWeighted/"
scraped_at: "2025-06-30T02:52:57.955Z"
---

# GeneratePathWeighted

GeneratePath a path between two positions for the given map ID, attaching an extra weight to each poly edge examined.

```lua
GeneratePathWeighted(x1, y1, z1, x2, y2, z2, mapId, callback) : {{ x, y, z }...}GeneratePathWeighted(x1, y1, z1, x2, y2, z2, mapId, callback) : {{ x, y, z }...}
```

Example

Generate a path between the player and target.

```lua
local px, py, pz = ObjectPosition('player')local tx, ty, tz = ObjectPosition('target')local mapID = GetMapID() local weighted = function(ax, ay, az, bx, by, bz)    local extraWeight = 0.0 -- float    -- poly edge A is ax, ay, az    -- poly edge B is bx, by, bz    -- callback is for movement between poly edge A and B     -- higher weights are avoided    return extraWeightend local path = GeneratePathWeighted(px, py, pz, tx, ty, tz, mapID, weighted)local px, py, pz = ObjectPosition('player')
local tx, ty, tz = ObjectPosition('target')
local mapID = GetMapID()

local weighted = function(ax, ay, az, bx, by, bz)
    local extraWeight = 0.0 -- float
    -- poly edge A is ax, ay, az
    -- poly edge B is bx, by, bz
    -- callback is for movement between poly edge A and B

    -- higher weights are avoided
    return extraWeight
end

local path = GeneratePathWeighted(px, py, pz, tx, ty, tz, mapID, weighted)
```