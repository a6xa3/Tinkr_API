---
title: "lowestaoe - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/lowestaoe/"
scraped_at: "2025-06-30T02:53:55.634Z"
---

# lowestaoe

Returns the lowest health group member with the (most units around them with the least amount of health) within a range that can receive a given spell.

```lua
lowestaoe(spell, range) : unittoken-- altslowestAoE(spell, range) : unittokenlowestaoe(spell, range) : unittoken
-- alts
lowestAoE(spell, range) : unittoken
```

Example

```lua
local lowestEffloresence = lowestaoe(Effloresence, 30) if  health(lowestEffloresence) < 60 then  return cast(Effloresence, lowestEffloresence):click(lowestEffloresencex,lowestEffloresencey,lowestEffloresencez)endlocal lowestEffloresence = lowestaoe(Effloresence, 30)

if  health(lowestEffloresence) < 60 then
  return cast(Effloresence, lowestEffloresence):click(lowestEffloresencex,lowestEffloresencey,lowestEffloresencez)
end
```