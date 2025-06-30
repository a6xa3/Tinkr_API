---
title: "Click - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Interaction/Click/"
scraped_at: "2025-06-30T02:52:53.101Z"
---

# Click

Clicks the ground at the given position. This is useful for casting spells on the ground.

```lua
Click(x, y, z)-- chainablecast(spellid, target):click(x,y,z)cast(spellid, target):atcursor()cast(spellId, 'none'):clickunit('target')Click(x, y, z)
-- chainable
cast(spellid, target):click(x,y,z)
cast(spellid, target):atcursor()
cast(spellId, 'none'):clickunit('target')
```

Example

Casts a pending ground spell at the targets feet.

```lua
local pending = IsSpellPending()if pending == 64 then    local x, y, z = ObjectPosition('target')    Click(x, y, z)endlocal pending = IsSpellPending()
if pending == 64 then
    local x, y, z = ObjectPosition('target')
    Click(x, y, z)
end
```