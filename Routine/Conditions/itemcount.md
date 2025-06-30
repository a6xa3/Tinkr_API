---
title: "itemcount - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/itemcount/"
scraped_at: "2025-06-30T02:53:51.630Z"
---

# itemcount

Returns the number of items of an item ID in the players bags.

```lua
itemCount(itemid) : integer-- altsitemcount(itemid) : integeritems(itemid) : integeritemCount(itemid) : integer
-- alts
itemcount(itemid) : integer
items(itemid) : integer
```

Example

```lua
if items(HealthStone) == 0 then  return cast(CreateHealthStone, 'player')endif items(HealthStone) == 0 then
  return cast(CreateHealthStone, 'player')
end
```