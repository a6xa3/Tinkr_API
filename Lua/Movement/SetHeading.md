---
title: "SetHeading - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Movement/SetHeading/"
scraped_at: "2025-06-30T02:52:59.401Z"
---

# SetHeading

Set your players rotation instantly to face a direction using the games input controller

```lua
SetHeading(theta)SetHeading(theta)
```

Example

Slightly rotate the character

```lua
local theta = ObjectRotation('player') + 0.1SetHeading(theta)local theta = ObjectRotation('player') + 0.1
SetHeading(theta)
```