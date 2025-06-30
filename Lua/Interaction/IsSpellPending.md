---
title: "IsSpellPending - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Interaction/IsSpellPending/"
scraped_at: "2025-06-30T02:52:53.305Z"
---

# IsSpellPending

Checks if a cursor spell cast is pending.

```lua
IsSpellPending() : valueIsSpellPending() : value
```

Example

Checks if a ground spell cast is pending.

```lua
local pending = IsSpellPending()if pending == 64 then    -- a ground cast spell is pendingendlocal pending = IsSpellPending()
if pending == 64 then
    -- a ground cast spell is pending
end
```