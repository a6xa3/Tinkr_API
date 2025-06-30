---
title: "GetAreaInfo - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Movement/GetAreaInfo/"
scraped_at: "2025-06-30T02:52:58.160Z"
---

# GetAreaInfo

Returns the current area info.

```lua
GetAreaInfo() : { continentID = int, areaID = int, parentAreaID = int }GetAreaInfo() : { continentID = int, areaID = int, parentAreaID = int }
```

Example

Get the current continent ID.

```lua
local areaInfo = GetAreaInfo()local continent = areaInfo.continentIDlocal areaInfo = GetAreaInfo()
local continent = areaInfo.continentID
```