---
title: "ttt - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/ttt/"
scraped_at: "2025-06-30T02:54:03.621Z"
---

# ttt

Returns the units timetotarget (time to target).

Defaults mover to Player and target to the players target.

```lua
ttt([mover, target]) : number-- aliasestimetotarget([mover, target]) : numberttt([mover, target]) : number
-- aliases
timetotarget([mover, target]) : number
```

Example

```lua
if ttt('pet', 'target') > 3  then    -- Let's take a second, let our pet get closer.endif ttt('pet', 'target') > 3  then
    -- Let's take a second, let our pet get closer.
end
```

Note

This is an estimation, as all things math, it's not PERFECT, but it's good enough.