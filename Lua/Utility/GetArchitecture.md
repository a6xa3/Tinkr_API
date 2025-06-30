---
title: "GetArchitecture - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/GetArchitecture/"
scraped_at: "2025-06-30T02:53:19.801Z"
---

# GetArchitecture

Returns the architecture of a tinkr build

```lua
GetArchitecture() : string (arm64/x86_64)GetArchitecture() : string (arm64/x86_64)
```

Example

Check if the tinkr build is arm.

```lua
local build = GetArchitecture()if build == 'arm64' then return endlocal build = GetArchitecture()
if build == 'arm64' then return end
```