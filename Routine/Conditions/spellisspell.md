---
title: "spellisspell - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/spellisspell/"
scraped_at: "2025-06-30T02:54:02.236Z"
---

# spellisspell

Returns if the two spells are the same.

```lua
spellisspell(spellA, spellB) : booleanspellisspell(spellA, spellB) : boolean
```

Example

```lua
if spellisspell(lasspell, Autoshot) then  return cast(Rebuke, 'target')endif spellisspell(lasspell, Autoshot) then
  return cast(Rebuke, 'target')
end
```

Note

This function checks the spell name and rank, not IDs.