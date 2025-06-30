---
title: "highestrankname - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/highestrankname/"
scraped_at: "2025-06-30T02:53:50.399Z"
---

# highestrankname

Similar to highestrank, however it returns the textual value of the rank, useful for mapping a spell that has ranked applied de/buffs on another unit. As with highestrank, the input spell must be in the players spell book.

```lua
highestrankname(spellId) : stringhighestrankname(spellId) : string
```

Example

```lua
if highestrankname(635) then  return print('you can cast 639 Holy Light ' .. highestrankname(635))endif highestrankname(635) then
  return print('you can cast 639 Holy Light ' .. highestrankname(635))
end
```