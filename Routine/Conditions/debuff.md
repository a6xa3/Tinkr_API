---
title: "debuff - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/debuff/"
scraped_at: "2025-06-30T02:53:45.546Z"
---

# debuff

Returns true if the unit has the debuff for the spellID sent or false.

```lua
debuff(spell, [unit]) : booleandebuff(spell, [unit]) : boolean
```

1.  SpellID from the class spellbooks.
    
2.  See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId).
    
3.  Use of object is also supported for unit / unit.
    

Example

Check for a debuff and cast if the condition is met.

```lua
if not debuff(WeakendSoul, 'player') and not buff(PowerWordShield, 'player') then    cast(PowerWordShield, 'player')endif not debuff(WeakendSoul, 'player') and not buff(PowerWordShield, 'player') then
    cast(PowerWordShield, 'player')
end
```

Note

Spell ID's and Debuff ID's for the same spell are not the same. If you find yourself spam caasting something, that is probably the reason.