---
title: "highestrank - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/highestrank/"
scraped_at: "2025-06-30T02:53:50.202Z"
---

# highestrank

Returns the highest known spell rank for the spell ID. The spell must be present in the players spell book.

```lua
highestrank(spellId) : spellIdhighestrank(spellId) : spellId
```

Example

```lua
if castable(highestrank(635)) then  return print('you can cast 639 (Holy Light (Rank 2))')endif castable(highestrank(635)) then
  return print('you can cast 639 (Holy Light (Rank 2))')
end
```