---
title: "moving - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/moving/"
scraped_at: "2025-06-30T02:53:56.220Z"
---

# moving

Returns the boolean if the UNIT is moving, otherwise false.

```lua
moving([UnitId]) : booleanmoving([UnitId]) : boolean
```

1\. See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId). Will default to 'player' if nothing is specified as an argument.

Example

```lua
if moving('target') then   MoveForwardStop() endif moving('target') then 
  MoveForwardStop() 
end 
```

Note

This uses GetUnitSpeed(unit) > 0 , returning boolean.