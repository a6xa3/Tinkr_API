---
title: "health - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/health/"
scraped_at: "2025-06-30T02:53:49.814Z"
---

# health

Returns the percentage of health remaining for a given target. Defaults to player if no target is provided.

```lua
health([target]) : inthealth([target]) : int
```

Example

```lua
if health('target') <= 50 then  return cast(FlashHeal, 'player)endif health('target') <= 50 then
  return cast(FlashHeal, 'player)
end
```