---
title: "GeneratePath - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Movement/GeneratePath/"
scraped_at: "2025-06-30T02:52:57.746Z"
---

# GeneratePath

GeneratePath a path between two positions for the given map ID.

```lua
GeneratePath(x1, y1, z1, x2, y2, z2, mapId) : {{ x, y, z }...}, pathTypeGeneratePath(x1, y1, z1, x2, y2, z2, mapId) : {{ x, y, z }...}, pathType
```

Example

Generate a path between the player and target.

```lua
local x1, y1, z1 = ObjectPosition('player')local x2, y2, z2 = ObjectPosition('target')local mapId = GetMapID()local path, pathType = GeneratePath(x1, y1, z1, x2, y2, z2, mapId)if pathType == PathTypes.PATHFIND_NORMAL then    for index, point in ipairs(path) do        -- do something with each point        -- point.x, point.y, point.z    endendlocal x1, y1, z1 = ObjectPosition('player')
local x2, y2, z2 = ObjectPosition('target')
local mapId = GetMapID()
local path, pathType = GeneratePath(x1, y1, z1, x2, y2, z2, mapId)
if pathType == PathTypes.PATHFIND_NORMAL then
    for index, point in ipairs(path) do
        -- do something with each point
        -- point.x, point.y, point.z
    end
end
```

These are the possible path types returned,

```lua
local PathTypes = {    PATHFIND_BLANK = 0x00, -- path not built yet    PATHFIND_NORMAL = 0x01, -- normal path    PATHFIND_SHORTCUT = 0x02, -- travel through obstacles, terrain, air, etc (old behavior)    PATHFIND_INCOMPLETE = 0x04, -- we have partial path to follow - getting closer to target    PATHFIND_NOPATH = 0x08, -- no valid path at all or error in generating one    PATHFIND_NOT_USING_PATH = 0x10, -- used when we are either flying/swiming or on map w/o mmaps    PATHFIND_SHORT = 0x20, -- path is longer or equal to its limited path length}local PathTypes = {
    PATHFIND_BLANK = 0x00, -- path not built yet
    PATHFIND_NORMAL = 0x01, -- normal path
    PATHFIND_SHORTCUT = 0x02, -- travel through obstacles, terrain, air, etc (old behavior)
    PATHFIND_INCOMPLETE = 0x04, -- we have partial path to follow - getting closer to target
    PATHFIND_NOPATH = 0x08, -- no valid path at all or error in generating one
    PATHFIND_NOT_USING_PATH = 0x10, -- used when we are either flying/swiming or on map w/o mmaps
    PATHFIND_SHORT = 0x20, -- path is longer or equal to its limited path length
}
```