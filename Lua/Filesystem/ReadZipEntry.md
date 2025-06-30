---
title: "ReadZipEntry - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Filesystem/ReadZipEntry/"
scraped_at: "2025-06-30T02:52:49.759Z"
---

# ReadZipEntry

Reads the contents of a given file inside a zip archive.

```lua
ReadZipEntry(zip, path) : data | falseReadZipEntry(zip, path) : data | false
```

Example

Reads the contents of the `test.json` file inside the `test.zip` archive.

```lua
local data = ReadZipEntry('test.zip', 'test.json')local data = ReadZipEntry('test.zip', 'test.json')
```