---
title: "Commands - Tinkr API Documentation"
url: "https://docs.tinkr.site/Modules/Util/Commands/"
scraped_at: "2025-06-30T02:53:27.954Z"
---

# Commands

`Tinkr.Util.Commands`

```lua
function Commands:New(prefix)function Commands:Register(command, handler, help, arguments)function Commands:New(prefix)
function Commands:Register(command, handler, help, arguments)
```

```lua
local Tinkr = ...local Commands = Tinkr.Util.Commands local awesome = Commands:New('awesome') -- Create the slash command /awesome testawesome:Register('test', function(option)    print(option)end, 'A simple test command', { 'option' }) -- Creates the slash commands /awesome foo AND /awesome barawesome:Register({ 'foo', 'bar' }, function(baz, bang)    print(baz, bang)end, 'Another test command', { 'baz', 'bang' })local Tinkr = ...
local Commands = Tinkr.Util.Commands

local awesome = Commands:New('awesome')

-- Create the slash command /awesome test
awesome:Register('test', function(option)
    print(option)
end, 'A simple test command', { 'option' })

-- Creates the slash commands /awesome foo AND /awesome bar
awesome:Register({ 'foo', 'bar' }, function(baz, bang)
    print(baz, bang)
end, 'Another test command', { 'baz', 'bang' })
```