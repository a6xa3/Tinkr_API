---
title: "ReadFile - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Filesystem/ReadFile/"
scraped_at: "2025-06-30T02:52:49.559Z"
---

# ReadFile

Reads the contents of a given file.

```lua
ReadFile(path) : data | falseReadFile(path) : data | false
```

Example

Reads the contents of the `scripts/test.json` file.

```lua
local data = ReadFile('scripts/test.json')local data = ReadFile('scripts/test.json')
```