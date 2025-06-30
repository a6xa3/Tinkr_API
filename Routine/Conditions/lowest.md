---
title: "lowest - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/lowest/"
scraped_at: "2025-06-30T02:53:55.435Z"
---

# lowest

Returns the lowest party unit that can be affected by a given spell.

```lua
lowest(unita, unitb) : booleanlowest(unita, unitb) : boolean
```

Example

```lua
local healTarget = lowest(FlashHeal)if health(healTarget) <= 50 then  return cast(FlashHeal, HealTarget)endlocal healTarget = lowest(FlashHeal)
if health(healTarget) <= 50 then
  return cast(FlashHeal, HealTarget)
end
```