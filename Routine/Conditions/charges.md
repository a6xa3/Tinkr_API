---
title: "charges - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/charges/"
scraped_at: "2025-06-30T02:53:44.186Z"
---

# charges

Returns the amount of spell charges left for a given spell.

```lua
charges([spellID]) : intcharges([spellID]) : int
```

Example

```lua
if charges(InfernalStrike) == 2 then  return cast(InfernalStrike, 'player)endif charges(InfernalStrike) == 2 then
  return cast(InfernalStrike, 'player)
end
```