---
title: "talent - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/talent/"
scraped_at: "2025-06-30T02:54:02.861Z"
---

# talent

Returns the boolean true if the player has the talent, otherwise false.

```lua
talent(row,column) : booleantalent(row,column) : boolean
```

Example

```lua
if talent(1,3) and enemy('target') then  return cast(FireFlame, 'target')endif talent(1,3) and enemy('target') then
  return cast(FireFlame, 'target')
end
```

Note

If the player has not chosen any talent on the tier and there is one available, this will always return TRUE.