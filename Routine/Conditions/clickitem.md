---
title: "clickitem - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/clickitem/"
scraped_at: "2025-06-30T02:53:44.764Z"
---

# clickitem

If the spell the player casted expects to click an item, this will do that.

```lua
clickitem(itemid) : boolean-- chainablecast(spellid, target):clickitem(item)clickitem(itemid) : boolean
-- chainable
cast(spellid, target):clickitem(item)
```

Example

```lua
TBD there's code in #general to feed pet, get that-- if items(HealthStone) >= 0 then--   return use(Healthstone, 'player')-- endTBD there's code in #general to feed pet, get that
-- if items(HealthStone) >= 0 then
--   return use(Healthstone, 'player')
-- end
```