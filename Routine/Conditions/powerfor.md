---
title: "powerfor - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/powerfor/"
scraped_at: "2025-06-30T02:53:59.076Z"
---

# powerfor

Returns the boolean if the player has the power to cast the spells provided.

```lua
powerfor({spellIDs}) : booleanpowerfor({spellIDs}) : boolean
```

Example

```lua
if powerfor({639,639}) then  return print('you can cast 2 Holy Lights')endif powerfor({639,639}) then
  return print('you can cast 2 Holy Lights')
end
```