---
title: "combat - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/combat/"
scraped_at: "2025-06-30T02:53:44.957Z"
---

# combat

Returns true if the UNIT is in combat, otherwise false.

```lua
combat([UnitId]) : booleancombat([UnitId]) : boolean
```

1\. See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId). Will default to 'player' if nothing is specified as an argument.

Example

Cast Frostbolt if my target is in fact in combat.

```lua
if combat('target') then   return cast(Frostbolt, 'target')endif combat('target') then 
  return cast(Frostbolt, 'target')
end 
```

Note

This uses UnitAffectingCombat(unit), returning boolean.