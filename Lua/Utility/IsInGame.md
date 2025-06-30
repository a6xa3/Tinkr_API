---
title: "IsInGame - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/IsInGame/"
scraped_at: "2025-06-30T02:53:21.016Z"
---

# IsInGame

Check if a the player is in the game world

```lua
IsInGame(): booleanIsInGame(): boolean
```

Example

Don't run rotation on the login screen

```lua
if not IsInGame() then return endif not IsInGame() then return end
```