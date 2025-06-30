---
title: "mounted - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/mounted/"
scraped_at: "2025-06-30T02:53:56.024Z"
---

# mounted

Returns true if the player is in combat, otherwise false.

```lua
mounted() : booleanmounted() : boolean
```

Example

Mount if I am currently not moving and not mounted.

```lua
if not mounted() and not moving() then   return cast('Blue Wind Rider')endif not mounted() and not moving() then 
  return cast('Blue Wind Rider')
end 
```

Note

This uses IsMounted(), returning boolean.