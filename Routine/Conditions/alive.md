---
title: "alive - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/alive/"
scraped_at: "2025-06-30T02:53:38.725Z"
---

# alive

Returns the boolean if the UNIT is alive, otherwise false.

```lua
alive([UnitId]) : booleanalive([UnitId]) : boolean
```

1\. See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId). Will default to 'player' if nothing is specified as an argument.

Example

```lua
if alive('target') then   return cast(Frostbolt, 'target')endif alive('target') then 
  return cast(Frostbolt, 'target')
end 
```

Note

This uses UnitIsDeadOrGhost(unit), returning boolean.