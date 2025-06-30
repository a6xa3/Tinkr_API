---
title: "aura - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/aura/"
scraped_at: "2025-06-30T02:53:39.116Z"
---

# aura

Returns the time left on an aura (buff / debuff). Use debuff() / buff() instead of direct access to aura

```lua
aura(unit, spellID, filter) : integeraura(unit, spellID, filter) : integer
```

1.  SpellID from the class spellbooks.
    
2.  See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId).
    
3.  Use of object is also supported for unit.
    
4.  filter ('HELPFUL' / 'HARMFUL').
    

Example

```lua
 if aura('player', BlazingBarrier, 'HELPFUL') then  return cast(BlazingBarrier, 'player') endif aura('player', BlazingBarrier, 'HELPFUL') then
  return cast(BlazingBarrier, 'player') 
end
```

Note

As stated above, use buff / debuff instead.