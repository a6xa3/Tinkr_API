---
title: "WouldInject - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/WouldInject/"
scraped_at: "2025-06-30T02:53:23.927Z"
---

# WouldInject

Check if tinkr would have injected lua into the client (Sanity check mainly, if it would return false it wouldn't exist (probably))

```lua
WouldInject(): booleanWouldInject(): boolean
```

Example

Don't run rotation if we can't inject

```lua
if not WouldInject() then return endif not WouldInject() then return end
```