---
title: "distancecheck - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/distancecheck/"
scraped_at: "2025-06-30T02:53:47.265Z"
---

# distancecheck

Retrusn if a unit is within the desired distance for a spell or a given range.

```lua
distancecheck(unit, spell[, range]) : Vector3-- altsdistanceCheck(unit, range) : Vector3distancecheck(unit, spell[, range]) : Vector3
-- alts
distanceCheck(unit, range) : Vector3
```

Example

```lua
if distancecheck('target', HolyLight) then    return cast(HolyLight, 'target')endif distancecheck('target', HolyLight) then
    return cast(HolyLight, 'target')
end
```