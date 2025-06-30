---
title: "ObjectAura - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectAura/"
scraped_at: "2025-06-30T02:53:06.374Z"
---

# ObjectAura

Get an objects hidden aura

```lua
ObjectAura(object, index) : UnitAura or nil-- AltGetUnitAura(object, index)ObjectAura(object, index) : UnitAura or nil
-- Alt
GetUnitAura(object, index)
```

Example

Iterate through all ObjectAura.

```lua
for i = 1, 40 do    local _, _, count, _, _, _, _, _, _, spellId, _, _, _, _, _ = UnitAura("player", i, "HELPFUL")    -- Do something with spellIdendfor i = 1, 40 do
    local _, _, count, _, _, _, _, _, _, spellId, _, _, _, _, _ = UnitAura("player", i, "HELPFUL")
    -- Do something with spellId
end
```