---
title: "UnitItemLevels - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/UnitItemLevels/"
scraped_at: "2025-06-30T02:53:15.918Z"
---

# UnitItemLevels

Return item levels for a [`WowGameObject`](../WowGameObject/).

```lua
UnitItemLevels(--[[(1)]]objectReference) : number[]UnitItemLevels(--[[(1)]]objectReference) : number[]
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if an object is sitting.

```lua
local equipped, current, avg, max = UnitItemLevels('player')local equipped, current, avg, max = UnitItemLevels('player')
```