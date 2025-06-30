---
title: "rank - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/rank/"
scraped_at: "2025-06-30T02:54:00.085Z"
---

# rank

Returns the spell ID for a spell at the desired rank (if known).

```lua
rank(spellId, rank) : spellId ? booleanrank(spellId, rank) : spellId ? boolean
```

Example

```lua
if castable(rank(635, 2)) then  return print('you can cast 639 (Holy Light (Rank 2))')endif castable(rank(635, 2)) then
  return print('you can cast 639 (Holy Light (Rank 2))')
end
```