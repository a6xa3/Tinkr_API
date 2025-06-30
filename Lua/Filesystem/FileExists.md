---
title: "FileExists - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Filesystem/FileExists/"
scraped_at: "2025-06-30T02:52:48.726Z"
---

# FileExists

Checks if the given file exists.

```lua
FileExists(file) : true | falseFileExists(file) : true | false
```

Example

Checks if the file `test.lua` exists in the scripts directory.

```lua
local exists = FileExists('scripts/test.lua')local exists = FileExists('scripts/test.lua')
```