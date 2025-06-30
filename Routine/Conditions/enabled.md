---
title: "enabled - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/enabled/"
scraped_at: "2025-06-30T02:53:47.660Z"
---

# enabled

Returns if the routine engine is enabled.

```lua
enabled() : booleanenabled() : boolean
```

Example

```lua
if enabled() then  return cast(Attack, 'target')endif enabled() then
  return cast(Attack, 'target')
end
```

Note

This should never be false, as routines do not run if false.