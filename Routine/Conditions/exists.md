---
title: "exists - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/exists/"
scraped_at: "2025-06-30T02:53:49.186Z"
---

# exists

Returns if the unit exists.

```lua
exists(unit) : booleanexists(unit) : boolean
```

Example

```lua
if exists('target') then  return cast(Attack, 'target')endif exists('target') then
  return cast(Attack, 'target')
end
```

Note

This does not check if the unit is in the object manager.