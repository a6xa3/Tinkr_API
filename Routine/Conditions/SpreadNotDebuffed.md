---
title: "SpreadNotDebuffed - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/SpreadNotDebuffed/"
scraped_at: "2025-06-30T02:53:38.534Z"
---

# SpreadNotDebuffed

Returns true if units inrange that are in combat do not have the debuff sent and applies the debuff.

```lua
SpreadNotDebuffed(range, debuffId, spelltocast) : boolean-- altsspreadnotdebuffed(range, debuffid, spelltocast) : booleanSpreadNotDebuffed(range, debuffId, spelltocast) : boolean
-- alts
spreadnotdebuffed(range, debuffid, spelltocast) : boolean
```

1\. Range is range or 20. debuff and spelltocast are spellIDs

Example

```lua
if talent(6, 1) and UnitAffectingCombat('player') and  mybuttons.SWP and health(mytank) > 95 then  SpreadNotDebuffed(40, PurgeTheWickedDebuff, PurgeTheWicked)endif talent(6, 1) and UnitAffectingCombat('player') and
  mybuttons.SWP and health(mytank) > 95 then
  SpreadNotDebuffed(40, PurgeTheWickedDebuff, PurgeTheWicked)
end
```

Note

Careful using this. It does exactly what it implies. Literally. Think about possibly doing a check for how many have the debuff first, then if the number is lower than what you expect then call this function. If your in a party and your tank sucks, your going to be tanking. You have been warned.