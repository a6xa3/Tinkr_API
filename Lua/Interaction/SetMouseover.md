---
title: "SetMouseover - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Interaction/SetMouseover/"
scraped_at: "2025-06-30T02:52:54.260Z"
---

# SetMouseover

Sets the mouseover to a [`WowGameObject`](../../Objects/WowGameObject/).

```lua
SetMouseover(--[[(1)]]objectReference) : true | falseSetMouseover(--[[(1)]]objectReference) : true | false
```

1.  See [Object Reference](../../Objects/ObjectReference/) for more information on possible values.

Example

Sets the mouseover unit to the target.

```lua
local target = Object('target')SetMouseover(target)-- do something with "mouseover"local target = Object('target')
SetMouseover(target)
-- do something with "mouseover"
```