---
title: "Config - Tinkr API Documentation"
url: "https://docs.tinkr.site/Modules/Util/Config/"
scraped_at: "2025-06-30T02:53:28.334Z"
---

# Config

`Util.Config`

```lua
function Config:New(name)function Config:Read(key, default)function Config:Write(key, value)function Config:New(name)
function Config:Read(key, default)
function Config:Write(key, value)
```

```lua
local Tinkr = ...local Config = Tinkr.Util.Config local my_config = Config:New('my_config') my_config:Write('foo', 'something')my_config:Write('bar', 'awesome') local foo = my_config:Read('foo', 'default value')local baz = my_config:Read('baz', 'default value') print(foo) -- somethingprint(baz) -- default valuelocal Tinkr = ...
local Config = Tinkr.Util.Config

local my_config = Config:New('my_config')

my_config:Write('foo', 'something')
my_config:Write('bar', 'awesome')

local foo = my_config:Read('foo', 'default value')
local baz = my_config:Read('baz', 'default value')

print(foo) -- something
print(baz) -- default value
```