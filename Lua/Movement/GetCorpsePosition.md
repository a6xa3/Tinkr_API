---
title: "GetCorpsePosition - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Movement/GetCorpsePosition/"
scraped_at: "2025-06-30T02:52:58.370Z"
---

# GetCorpsePosition

Returns the position of the players corpse.

```lua
GetCorpsePosition() : x, y, z-- AltGetCorpseLocation(): x,y,zGetCorpsePosition() : x, y, z
-- Alt
GetCorpseLocation(): x,y,z
```

Example

Gets the position of the players corpse.

```lua
local x, y, z = GetCorpsePosition(x, y, z)local x, y, z = GetCorpsePosition(x, y, z)
```