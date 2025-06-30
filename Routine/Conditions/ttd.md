---
title: "ttd - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/ttd/"
scraped_at: "2025-06-30T02:54:03.432Z"
---

# ttd

Returns the units timetodeath (time to die).

```lua
ttd(unit) : number-- aliasestimetodie(unit) : numberttd(unit) : number
-- aliases
timetodie(unit) : number
```

Example

```lua
if ttd('target') > 40  then    -- use our 30 second cooldowns, it's fine.endif ttd('target') > 40  then
    -- use our 30 second cooldowns, it's fine.
end
```

Note

This is an estimation, as all things math, it's not PERFECT, but it's good enough.