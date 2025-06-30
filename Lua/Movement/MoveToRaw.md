---
title: "MoveToRaw - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Movement/MoveToRaw/"
scraped_at: "2025-06-30T02:52:59.198Z"
---

# MoveToRaw

Click to Move to a raw position ignoring transport world relativity

```lua
MoveToRaw(x, y, z)MoveToRaw(x, y, z)
```

Example

Click to move to the target position.

```lua
local x, y, z = ObjectRawPosition('target')MoveToRaw(x, y, z)local x, y, z = ObjectRawPosition('target')
MoveToRaw(x, y, z)
```