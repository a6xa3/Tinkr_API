---
title: "ObjectCastingTarget - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectCastingTarget/"
scraped_at: "2025-06-30T02:53:06.950Z"
---

# ObjectCastingTarget

Returns a [`WowGameObject`](../WowGameObject/) representing the destination for a units current spell cast.

```lua
ObjectCastingTarget(--[[(1)]]objectReference) : WowGameObject | falseObjectCastingTarget(--[[(1)]]objectReference) : WowGameObject | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the players casting target.

```lua
local target = ObjectCastingTarget('player')local target = ObjectCastingTarget('player')
```