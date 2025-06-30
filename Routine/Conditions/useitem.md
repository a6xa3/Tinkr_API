---
title: "useitem - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/useitem/"
scraped_at: "2025-06-30T02:54:04.049Z"
---

# useitem

Uses the item of itemID.

```lua
useitem(itemid) : integer-- altsuse(itemid) : integeruseitem(itemid) : integer
-- alts
use(itemid) : integer
```

Example

```lua
if items(HealthStone) >= 0 then  return use(Healthstone, 'player')endif items(HealthStone) >= 0 then
  return use(Healthstone, 'player')
end
```