---
title: "buff - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/buff/"
scraped_at: "2025-06-30T02:53:40.708Z"
---

# buff

Returns true if the unit has the buff for the spellID sent or false.

```lua
buff(spell, [unit]) : booleanbuff(spell, [unit]) : boolean
```

1.  SpellID from the class spellbooks
2.  See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId).
3.  Use of object is also supported for unit / unit.

Example

Cast Renew on your focus target if it does not have the buff.

```lua
if not buff(Renew, 'focus') then    cast(Renew, 'focus')endif not buff(Renew, 'focus') then
    cast(Renew, 'focus')
end
```

Note

Spell ID's and Buff ID's for the same spell are not the same. If you find yourself spam caasting something, that is probably the reason.