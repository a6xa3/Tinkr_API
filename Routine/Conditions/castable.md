---
title: "castable - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/castable/"
scraped_at: "2025-06-30T02:53:42.451Z"
---

# castable

Returns true if the spell sent can in fact be cast, false if not.

```lua
castable(spellID, unitID / object) : booleancastable(spellID, unitID / object) : boolean
```

1.  SpellID from the class spellbooks
2.  See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId).
3.  use of object is also supported for unit.

Example

```lua
if castable(Frostbolt, 'target') then  return cast(Frostbolt, 'target')endif castable(Frostbolt, 'target') then
  return cast(Frostbolt, 'target')
end 
```

Note

The following is reviewed when calling this function:

```lua
resolveSpellID(dpellID)IsSpellKnown(spellID)UnitExists(unit / object)distanceCheck(unit, spellID) -- checks spell range from player to targetcanSee(unit) channeling('player') IsUsableSpell(spellID)cooldown(spellID)resolveSpellID(dpellID)
IsSpellKnown(spellID)
UnitExists(unit / object)
distanceCheck(unit, spellID) -- checks spell range from player to target
canSee(unit) 
channeling('player') 
IsUsableSpell(spellID)
cooldown(spellID)
```