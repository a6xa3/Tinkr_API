---
title: "ListFiles - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Filesystem/ListFiles/"
scraped_at: "2025-06-30T02:52:49.135Z"
---

# ListFiles

List all files in a given directory.

```lua
ListFiles(dir) : { files... }ListFiles(dir) : { files... }
```

Example

Lists all files in the scripts directory.

```lua
local files = ListFiles('scripts') for _, file in ipairs(files) do    print(file)endlocal files = ListFiles('scripts')

for _, file in ipairs(files) do
    print(file)
end
```