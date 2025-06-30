---
title: "totem - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/totem/"
scraped_at: "2025-06-30T02:54:03.223Z"
---

# totem

Returns true if the totem 'spell name' is currently active, false otherwise.

```lua
totem('spell name') : booleantotem('spell name') : boolean
```

Example

```lua
if not totem('Healing Stream Totem') and health() < 80  then   return cast(HealingStreamTotem)end  if not totem('ConcentrationAura') then   return cast(Concentration)endif not totem('Healing Stream Totem') and health() < 80  then 
  return cast(HealingStreamTotem)
end 

if not totem('ConcentrationAura') then 
  return cast(Concentration)
end 
```

Note

This applies to Paladin concecration and Druid mushroom as well. Remember, to check the spellIDs of each before assuming they are the same.