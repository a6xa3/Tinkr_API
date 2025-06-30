---
title: "GetWindowStatus - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/GetWindowStatus/"
scraped_at: "2025-06-30T02:53:20.822Z"
---

# GetWindowStatus

Check if a window is in the foreground

```lua
GetWindowStatus(): booleanGetWindowStatus(): boolean
```

Example

Don't run rotation in the background

```lua
if not GetWindowStatus() then return endif not GetWindowStatus() then return end
```