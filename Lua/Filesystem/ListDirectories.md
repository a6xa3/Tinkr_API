---
title: "ListDirectories - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Filesystem/ListDirectories/"
scraped_at: "2025-06-30T02:52:48.932Z"
---

# ListDirectories

List all directories in a given directory.

```lua
ListDirectories(dir) : { files... }ListFolders(dir) : { files... }ListDirectories(dir) : { files... }
ListFolders(dir) : { files... }
```

Example

Lists all files in the scripts directory.

```lua
local files = ListDirectories('scripts') for _, file in ipairs(files) do    print(file)endlocal files = ListDirectories('scripts')

for _, file in ipairs(files) do
    print(file)
end
```