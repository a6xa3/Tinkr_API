---
title: "tank - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/tank/"
scraped_at: "2025-06-30T02:54:03.040Z"
---

# tank

Returns the best tank unit.

```lua
tank() : UnitTokentank() : UnitToken
```

Example

```lua
if tank() ~= 'player' and health(tank()) < 30 then  return cast(FlashHeal, tank())endif tank() ~= 'player' and health(tank()) < 30 then
  return cast(FlashHeal, tank())
end
```