---
title: "SetTargetObject - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Interaction/SetTargetObject/"
scraped_at: "2025-06-30T02:52:55.803Z"
---

# SetTargetObject

Sets the target object to a [`WowGameObject`](../../Objects/WowGameObject/).

```lua
SetTargetObject(--[[(1)]]objectReference) : true | falseSetTargetObject(--[[(1)]]objectReference) : true | false
```

1.  See [Object Reference](../../Objects/ObjectReference/) for more information on possible values.

Example

Sets the target unit to the focus.

```lua
local focus = Object('focus')SetTargetObject(focus)-- do something with "target"local focus = Object('focus')
SetTargetObject(focus)
-- do something with "target"
```