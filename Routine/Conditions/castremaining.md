---
title: "castremaining - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/castremaining/"
scraped_at: "2025-06-30T02:53:42.836Z"
---

# castremaining

Returns the percentage or absolute time remaining of a spell cast on a unit.

Defaults unit Player and time to false.

Time forces it to return the absolute time, leave out for percentage.

```lua
castremaining([unit, time]) : numbercastremaining([unit, time]) : number
```

Example

```lua
if castremaining('pet') < 30  then    -- Interrupt them!.endif castremaining('pet') < 30  then
    -- Interrupt them!.
end
```