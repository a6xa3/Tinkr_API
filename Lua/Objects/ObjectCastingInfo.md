---
title: "ObjectCastingInfo - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectCastingInfo/"
scraped_at: "2025-06-30T02:53:06.760Z"
---

# ObjectCastingInfo

Returns the casting and channeling spell of a [`WowGameObject`](../WowGameObject/).

```lua
ObjectCastingInfo(--[[(1)]]objectReference) : number[] | falseObjectCastingInfo(--[[(1)]]objectReference) : number[] | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the players casting spell.

```lua
local casting, channeling = ObjectCastingInfo('player')local casting, channeling = ObjectCastingInfo('player')
```