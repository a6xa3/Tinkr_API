---
title: "enemy - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/enemy/"
scraped_at: "2025-06-30T02:53:48.994Z"
---

# enemy

Returns the boolean if the UNIT can be attacked by the player, otherwise false.

```lua
enemy([UnitId]) : boolean-- altsIsEnemy([unitid]) : booleanenemy([UnitId]) : boolean
-- alts
IsEnemy([unitid]) : boolean
```

1\. See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId). Will default to 'target' if nothing is specified as an argument.

Example

```lua
if enemy('target') then  return cast(Frostbolt, 'target')endif enemy('target') then
  return cast(Frostbolt, 'target')
end
```

Note

This uses UnitCanAttack(unit1, unit2), returning boolean.