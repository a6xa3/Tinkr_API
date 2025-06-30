---
title: "cooldown - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/cooldown/"
scraped_at: "2025-06-30T02:53:45.156Z"
---

# cooldown

Returns the time until a particular spell can be ast or 0 as an integer.

```lua
cooldown([spellID]) : booleancooldown([spellID]) : boolean
```

1\. SpellID from the class spellbooks

Example

```lua
if cooldown(IcyVeins) and mybuttons.CoolDowns == true then   return cast(IcyVeins)end if cooldown(32263) and mybuttons.CoolDowns == true then   return cast(32263)endif cooldown(IcyVeins) and mybuttons.CoolDowns == true then 
  return cast(IcyVeins)
end 
if cooldown(32263) and mybuttons.CoolDowns == true then 
  return cast(32263)
end 
```

Note

This uses GetSpellCooldown(spellID) and GetTime().