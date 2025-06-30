---
title: "interruptible - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/interruptible/"
scraped_at: "2025-06-30T02:53:50.991Z"
---

# interruptible

Returns if the current target is interruptible, and casting a Tinkr defined interrupt which currently is {LATEST\_RETAIL\_GAME\_VERSION} endgame bound. Supplying false checks if any spell casted is interruptible.

```lua
interruptible([unit, percent]) : booleaninterruptible([unit, percent]) : boolean
```

Example

```lua
if interruptible('target', 50) then  return cast(Kick, 'target)endif interruptible('target', 50) then
  return cast(Kick, 'target)
end
```

Note

Currently the given interrupt list is for shadowlands endgame content.

```lua
    interrupts = {334748, 320462, 324293, 319070, 322938, 324914, 324776, 321828, 326046, 340544, 337235, 337251,                  337253, 322450, 325700, 325701, 326607, 328322, 323538, 323552, 341902, 341969, 342139, 330562,                  332329, 332666, 332706, 332612, 332084, 317936, 317963, 327413, 327416, 328295, 328137, 328331,                  322433, 319654, 321038},    interrupts = {334748, 320462, 324293, 319070, 322938, 324914, 324776, 321828, 326046, 340544, 337235, 337251,
                  337253, 322450, 325700, 325701, 326607, 328322, 323538, 323552, 341902, 341969, 342139, 330562,
                  332329, 332666, 332706, 332612, 332084, 317936, 317963, 327413, 327416, 328295, 328137, 328331,
                  322433, 319654, 321038},
```