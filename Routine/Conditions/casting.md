---
title: "casting - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/casting/"
scraped_at: "2025-06-30T02:53:42.651Z"
---

# casting

Returns the spellname if the UNIT is casting, otherwise false.

```lua
casting([UnitId]) : spellname : falsecasting([UnitId]) : spellname : false 
```

1\. See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId). Will default to 'player' if nothing is specified.

Example

```lua
if casting('target') then   return cast(Rebuke, 'target')endif casting('target') then 
  return cast(Rebuke, 'target')
end 
```

```lua
if casting('target') == "Shadow Bolt" then   return cast(Rebuke, 'target')endif casting('target') == "Shadow Bolt" then 
  return cast(Rebuke, 'target')
end
```

```lua
if casting() then   return endif casting() then 
  return 
end
```

Note

Just because it returns a spell does not mean it can be interrupted.