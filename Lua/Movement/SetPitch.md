---
title: "SetPitch - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Movement/SetPitch/"
scraped_at: "2025-06-30T02:52:59.675Z"
---

# SetPitch

Set your players rotation instantly to face a direction using the games input controller

```lua
SetPitch(theta)SetPitch(theta)
```

Example

Slightly angle the character

```lua
local theta = GetPitch() + 0.1SetPitch(theta)local theta = GetPitch() + 0.1
SetPitch(theta)
```