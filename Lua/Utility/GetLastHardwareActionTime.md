---
title: "GetLastHardwareActionTime - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/GetLastHardwareActionTime/"
scraped_at: "2025-06-30T02:53:20.621Z"
---

# GetLastHardwareActionTime

GetLastHardwareActionTime returns the last time your game client received a hardware interaction

```lua
GetLastHardwareActionTime()GetLastHardwareActionTime()
```

Example

Set your last interaction time to the last time + 100.

```lua
SetLastHardwareActionTime(GetLastHardwareActionTime() + 100)SetLastHardwareActionTime(GetLastHardwareActionTime() + 100)
```