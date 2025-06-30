---
title: "WriteFile - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Filesystem/WriteFile/"
scraped_at: "2025-06-30T02:52:49.937Z"
---

# WriteFile

Writes the data to a given file.

```lua
WriteFile(path, data, append) : true | falseWriteFile(path, data, append) : true | false
```

Example

Writes "Hello World" into `test.txt`.

```lua
local success = WriteFile('test.txt', 'Hello World', false)local success = WriteFile('test.txt', 'Hello World', false)
```