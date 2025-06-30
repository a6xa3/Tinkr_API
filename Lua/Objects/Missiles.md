---
title: "Missiles - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/Missiles/"
scraped_at: "2025-06-30T02:53:05.988Z"
---

# Missiles

Gets a list of all Missiles.

```lua
Missiles() : { CMissile, ... }Missiles() : { CMissile, ... }
```

is!!! example Iterate through all Missiles.

````
```lualocal Missiles = Missiles() for i, missile in ipairs(Missiles) do    -- handle missileend``` ```lua    for m in ObjectManager:Missiles() do    -- inital -> hit    -- draw:SetColor(255, 255, 255, 128)    draw:Line(m.ix, m.iy, m.iz, m.hx, m.hy, m.hz)     -- current -> hit    -- draw:SetColor(3, 252, 11, 256)    draw:Line(m.cx, m.cy, m.cz, m.hx, m.hy, m.hz)     -- model -> hit    if m.mx and m.my and m.mz then        -- draw:SetColor(3, 252, 252, 256)        draw:Line(m.mx, m.my, m.mz, m.hx, m.hy, m.hz)    end     -- draw:SetColor(255, 255, 255, 255)    local cdt = Common.Distance(m.cx, m.cy, m.cz, m.hx, m.hy, m.hz)    local spell = GetSpellInfo(m.spellId)    draw:Text((spell or m.spellId), "NumberFont_Small", m.cx, m.cy, m.cz + 1.35)end``````lua
local Missiles = Missiles()

for i, missile in ipairs(Missiles) do
    -- handle missile
end
```

```lua
    for m in ObjectManager:Missiles() do
    -- inital -> hit
    -- draw:SetColor(255, 255, 255, 128)
    draw:Line(m.ix, m.iy, m.iz, m.hx, m.hy, m.hz)

    -- current -> hit
    -- draw:SetColor(3, 252, 11, 256)
    draw:Line(m.cx, m.cy, m.cz, m.hx, m.hy, m.hz)

    -- model -> hit
    if m.mx and m.my and m.mz then
        -- draw:SetColor(3, 252, 252, 256)
        draw:Line(m.mx, m.my, m.mz, m.hx, m.hy, m.hz)
    end

    -- draw:SetColor(255, 255, 255, 255)
    local cdt = Common.Distance(m.cx, m.cy, m.cz, m.hx, m.hy, m.hz)
    local spell = GetSpellInfo(m.spellId)
    draw:Text((spell or m.spellId), "NumberFont_Small", m.cx, m.cy, m.cz + 1.35)
end
```
````