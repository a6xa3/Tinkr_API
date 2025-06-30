---
title: "CreateDirectory - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Filesystem/CreateDirectory/"
scraped_at: "2025-06-30T02:52:48.101Z"
---

# CreateDirectory

Attempts to create a given directory.

```lua
CreateDirectory(dir) : true | falseCreateFolder(dir) : true | falseCreateDirectory(dir) : true | false
CreateFolder(dir) : true | false
```

Example

Create a folder `myfolder` in the scripts directory.

```lua
local success = CreateDirectory('scripts/myfolder')local success = CreateDirectory('scripts/myfolder')
```