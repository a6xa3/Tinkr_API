---
title: "spellInRange - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/spellInRange/"
scraped_at: "2025-06-30T02:54:02.039Z"
---

# spellInRange

Returns true if the UNIT is in range of the spell sent, otherwise false.

```lua
spellInRange(spell,[Unit]) : boolean-- altsspellinrange(spell, [unit]) : booleanspellreach(spell, [unit]) : booleanspellInRange(spell,[Unit]) : boolean
-- alts
spellinrange(spell, [unit]) : boolean
spellreach(spell, [unit]) : boolean
```

1\. See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId). Will default to 'player' if nothing is specified as an argument.

Example

```lua
if spellInRange(FrostNova, 'arena1') and cooldown(FrostNova) == 0 then  return cast(FrostNova)endif spellInRange(FrostNova, 'arena1') and cooldown(FrostNova) == 0 then
  return cast(FrostNova)
end
```

Note

This uses IsActionInRange() and GetActionInfo(), returning boolean.