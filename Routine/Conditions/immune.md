---
title: "immune - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/immune/"
scraped_at: "2025-06-30T02:53:50.603Z"
---

# immune

Returns if the target was known to be immune to a spell.

```lua
immune(unit, spellID) : booleanimmune(unit, spellID) : boolean
```

Example

```lua
if not immune('target', Fireball) then  return cast(Fireball, 'target')endif not immune('target', Fireball) then
  return cast(Fireball, 'target')
end
```

Note

Immunities are not obtainable on the client side, this utility maintains a cache in the background of known immunities the client has encountered.