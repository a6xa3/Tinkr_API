---
title: "usable - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/usable/"
scraped_at: "2025-06-30T02:54:03.816Z"
---

# usable

Returns if the given item is usable or not.

```lua
usable(itemID) : boolean-- altitemable(itemID) : booleanusable(itemID) : boolean
-- alt
itemable(itemID) : boolean
```

Example

```lua
if usable(HealthStone) then  return use(HealthStone, 'player')endif usable(HealthStone) then
  return use(HealthStone, 'player')
end
```