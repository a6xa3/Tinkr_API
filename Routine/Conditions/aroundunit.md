---
title: "aroundunit - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/aroundunit/"
scraped_at: "2025-06-30T02:53:38.921Z"
---

# aroundunit

Returns the amount of party members around the unit, and their total health pool percentage for a given range.

```lua
local count, pool = aroundunit(unita, range) : number, numberlocal count, pool = aroundunit(unita, range) : number, number
```

Example

```lua
local count, pool = aroundunit('player', 30) : number, number if  count > 3 and pool < 60 then  return cast(Effloresence, 'player'):click(playerx,playery,playerz)endlocal count, pool = aroundunit('player', 30) : number, number

if  count > 3 and pool < 60 then
  return cast(Effloresence, 'player'):click(playerx,playery,playerz)
end
```