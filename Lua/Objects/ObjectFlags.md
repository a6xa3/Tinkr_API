---
title: "ObjectFlags - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectFlags/"
scraped_at: "2025-06-30T02:53:07.940Z"
---

# ObjectFlags

Returns the flags of a [`WowGameObject`](../WowGameObject/).

```lua
ObjectFlags(--[[(1)]]objectReference) : flags... | falseObjectFlags(--[[(1)]]objectReference) : flags... | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get a units flags.

```lua
local flags1, flags2, flags3, flags4, unitFlags1, unitFlags2, dynamicFlags = ObjectFlags('target')local flags1, flags2, flags3, flags4, unitFlags1, unitFlags2, dynamicFlags = ObjectFlags('target')
```

Get an objects flags.

```lua
local flags, animationFlags = ObjectFlags(object)local flags, animationFlags = ObjectFlags(object)
```