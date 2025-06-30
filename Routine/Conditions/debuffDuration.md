---
title: "debuffDuration - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/debuffDuration/"
scraped_at: "2025-06-30T02:53:45.738Z"
---

# debuffDuration

Returns the time remaining on a debuff or 0.

```lua
debuffDuration(spell, [unit]) : integer-- altsdebuffduration(spell, [unit]) : integerdebuffDuration(spell, [unit]) : integer
-- alts
debuffduration(spell, [unit]) : integer
```

1.  SpellID from the class spellbooks
2.  See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId).
3.  Use of object is also supported for unit / unit.

Example

Return the time left on Starfire debuff

```lua
if debuffDuration(Starfire, 'target') < 3 then    return cast(Starfire, 'target')endif debuffDuration(Starfire, 'target') < 3 then
    return cast(Starfire, 'target')
end
```

Note

Spell ID's and Buff ID's for the same spell are not the same. If you find yourself spam caasting something, that is probably the reason.