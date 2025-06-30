---
title: "clickableEntity - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/clickableEntity/"
scraped_at: "2025-06-30T02:53:44.575Z"
---

# clickableEntity

Returns if a target is clickable.

```lua
clickable(unitId) : true : falseclickable(unitId) : true : false
```

1.  Cast will only utilize a position if the spell being casted is a spell that requires clicking the mouse. Examples: Effloresence.

Example

```lua
if clickableEntity('target') then  return cast(Efflorescence, 'target')endif clickableEntity('target') then
  return cast(Efflorescence, 'target')
end
```