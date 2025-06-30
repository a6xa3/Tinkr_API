---
title: "cansee - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/cansee/"
scraped_at: "2025-06-30T02:53:42.254Z"
---

# cansee

Returns if the given unit can see the other given unit. This is a LOS check.

```lua
cansee(unita, unitb) : boolean-- altscanSee(unita, unitb) : booleancansee(unita, unitb) : boolean
-- alts
canSee(unita, unitb) : boolean
```

Example

```lua
if cansee('player', 'target') then  -- Do somethingendif cansee('player', 'target') then
  -- Do something
end
```