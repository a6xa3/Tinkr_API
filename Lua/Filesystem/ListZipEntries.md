---
title: "ListZipEntries - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Filesystem/ListZipEntries/"
scraped_at: "2025-06-30T02:52:49.346Z"
---

# ListZipEntries

List all files in a given zip.

```lua
ListZipEntries(path) : { files... }ListZipEntries(path) : { files... }
```

Example

Lists all files in the `test.zip` archive.

```lua
local files = ListZipEntries('test.zip') for _, file in ipairs(files) do    print(file)endlocal files = ListZipEntries('test.zip')

for _, file in ipairs(files) do
    print(file)
end
```