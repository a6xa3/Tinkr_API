---
title: "DirectoryExists - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Filesystem/DirectoryExists/"
scraped_at: "2025-06-30T02:52:48.515Z"
---

# DirectoryExists

Checks if the given directory exists.

```lua
DirectoryExists(dir) : true | falseFolderExists(dir) : true | falseDirectoryExists(dir) : true | false
FolderExists(dir) : true | false
```

Example

Checks if the folder `myfolder` exists in the scripts directory.

```lua
local exists = DirectoryExists('scripts/myfolder')local exists = DirectoryExists('scripts/myfolder')
```