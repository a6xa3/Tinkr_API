---
title: "buffCount - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/buffCount/"
scraped_at: "2025-06-30T02:53:40.921Z"
---

# buffCount

Returns the r buff count of a passed spell on a unit / object.

```lua
buffCount(unit, spellID, filter) : integer-- altsbuffcount(unit, spellID, filter) : integerbuffs(unit, spellid, filter) : integerbuffCount(unit, spellID, filter) : integer
-- alts
buffcount(unit, spellID, filter) : integer
buffs(unit, spellid, filter) : integer
```

1\. SpellID from the class spellbooks 2. See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId). 3. Use of object is also supported for unit.

Example

```lua
if buffCount('player', Iceicles, 'HELPFUL') > 2 then  return cast(Icelance, 'target')endif buffCount('player', Iceicles, 'HELPFUL') > 2 then
  return cast(Icelance, 'target')
end
```

Note

This function calls the auraCount() function.