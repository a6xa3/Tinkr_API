---
title: "SetLastHardwareActionTime - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/SetLastHardwareActionTime/"
scraped_at: "2025-06-30T02:53:23.316Z"
---

# SetLastHardwareActionTime

SetLastHardwareActionTime updates the last input interaction time in the game client, mainly used to prevent AFK behaviors

```lua
SetLastHardwareActionTime(number)SetLastHardwareActionTime(number)
```

Example

Set your last interaction time to now.

```lua
SetLastHardwareActionTime(GetGameTick())SetLastHardwareActionTime(GetGameTick())
```