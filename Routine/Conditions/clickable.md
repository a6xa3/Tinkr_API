---
title: "clickable - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/clickable/"
scraped_at: "2025-06-30T02:53:44.389Z"
---

# clickable

Returns if a target location is clickable.

```lua
clickable(Vector3) : true : falseclickable(Vector3) : true : false
```

1.  Cast will only utilize a position if the spell being casted is a spell that requires clicking the mouse. Examples: Effloresence.
    
2.  This is a wrapper of LineOfSight() and clickableEntity
    

Example

```lua
if clickable({x = 0, y = 0, z  = 0}) then  return cast(Efflorescence, 'none', {x = 0, y = 0, z  = 0})endif clickable({x = 0, y = 0, z  = 0}) then
  return cast(Efflorescence, 'none', {x = 0, y = 0, z  = 0})
end
```