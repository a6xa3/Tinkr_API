---
title: "SetNPCObject - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Interaction/SetNPCObject/"
scraped_at: "2025-06-30T02:52:55.589Z"
---

# SetNPCObject

Sets the target object to a [`WowGameObject`](../../Objects/WowGameObject/).

```lua
SetNPCObject(--[[(1)]]objectReference) : true | falseSetNPCObject(--[[(1)]]objectReference) : true | false
```

1.  See [Object Reference](../../Objects/ObjectReference/) for more information on possible values.

Example

Sets the target unit to the focus.

```lua
local focus = Object('focus')SetNPCObject(focus)-- do something with "target"local focus = Object('focus')
SetNPCObject(focus)
-- do something with "target"
```