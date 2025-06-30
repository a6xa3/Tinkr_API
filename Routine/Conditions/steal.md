---
title: "steal - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/steal/"
scraped_at: "2025-06-30T02:54:02.663Z"
---

# steal

Returns if the target has a stealable buff.

```lua
steal() : boolean-- altstealable() : booleansteal() : boolean
-- alt
stealable() : boolean
```

Example

```lua
if steal() then  return cast(SpellSteal, 'target')endif steal() then
  return cast(SpellSteal, 'target')
end
```

Note

This does not check for range, so doing a quick check for your targets range is advised. Castable will also suffice