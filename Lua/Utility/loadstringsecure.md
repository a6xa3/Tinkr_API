---
title: "loadstringsecure - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/loadstringsecure/"
scraped_at: "2025-06-30T02:53:25.296Z"
---

# loadstringsecure

loadstring but without lua taint.

```lua
loadstringsecure(code): functionloadstringsecure(code): function
```

Example

JumpOrAscendStart unlocked

```lua
local lua = loadstringsecure("JumpOrAscendStart()")lua() -- Execute the string loaded into the functionlocal lua = loadstringsecure("JumpOrAscendStart()")
lua() -- Execute the string loaded into the function
```