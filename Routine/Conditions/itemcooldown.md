---
title: "itemcooldown - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/itemcooldown/"
scraped_at: "2025-06-30T02:53:51.401Z"
---

# itemcooldown

Returns the given item cooldown remaining.

```lua
itemcooldown(itemid) : boolean-- altsitemCooldown(itemid) : booleanitemcd(itemID) : booleanitemcooldown(itemid) : boolean
-- alts
itemCooldown(itemid) : boolean
itemcd(itemID) : boolean
```

Example

```lua
if itemcooldown(HealthStone) then  return cast(HealthStone, 'player')endif itemcooldown(HealthStone) then
  return cast(HealthStone, 'player')
end
```