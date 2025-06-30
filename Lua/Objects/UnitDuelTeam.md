---
title: "UnitDuelTeam - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/UnitDuelTeam/"
scraped_at: "2025-06-30T02:53:15.308Z"
---

# UnitDuelTeam

Returns the duel team of a [`WowGameObject`](../WowGameObject/).

```lua
UnitDuelTeam(--[[(1)]]objectReference) : x, y, zUnitDuelTeam(--[[(1)]]objectReference) : x, y, z
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

If two units are on the same team don't continue your rotation on them.

```lua
local pdt = UnitDuelTeam('player')local tdt = UnitDuelTeam('target')if pdt == tdt then return endlocal pdt = UnitDuelTeam('player')
local tdt = UnitDuelTeam('target')
if pdt == tdt then return end
```