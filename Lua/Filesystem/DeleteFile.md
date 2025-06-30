---
title: "DeleteFile - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Filesystem/DeleteFile/"
scraped_at: "2025-06-30T02:52:48.289Z"
---

# DeleteFile

Deletes a file from the system.

```lua
DeleteFile(file) : true | falseDeleteFile(file) : true | false
```

Example

Remove a test file.

```lua
local exists = DeleteFile('scripts/test.txt')local exists = DeleteFile('scripts/test.txt')
```