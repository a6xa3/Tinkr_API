---
title: "resolveSpellID - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/resolveSpellID/"
scraped_at: "2025-06-30T02:54:00.271Z"
---

# resolveSpellID

Returns the correct SPELL ID for a given spell.

```lua
resolveSpellID([spellID]) : integerresolveSpellID([spellID]) : integer
```

1\. SpellID from the class spellbooks

Example

```lua
local lowlevelFrostbolt = resolveSpellID(Frostbolt)if resolveSpellID(lowlevelFrostbolt) then  return cast(lowlevelFrostbolt, 'target')endlocal lowlevelFrostbolt = resolveSpellID(Frostbolt)
if resolveSpellID(lowlevelFrostbolt) then
  return cast(lowlevelFrostbolt, 'target')
end
```

Note

This should really not be used in a rotation, but its there if needed. This will play a bigger roll for Classic and TBC. This check is already done with

```lua
castable(Frostbolt, 'target')castable(Frostbolt, 'target')
```