---
title: "Eval - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/Eval/"
scraped_at: "2025-06-30T02:53:19.225Z"
---

# Eval

Runs lua code in a unprotected environment.

```lua
Eval(code, --[[(1)]]file)Eval(code, --[[(1)]]file)
```

1.  This file name is used in the Lua error dialog should something go wrong.

Example

Sets the mouseover unit to the target.

```lua
Eval("JumpOrAscendStart()", "example.lua")Eval("JumpOrAscendStart()", "example.lua")
```