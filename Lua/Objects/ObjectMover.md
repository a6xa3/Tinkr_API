---
title: "ObjectMover - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectMover/"
scraped_at: "2025-06-30T02:53:09.501Z"
---

# ObjectMover

Returns the objectReference that the [`WowGameObject`](../WowGameObject/) is moving on.

This would be elevators or other moving platforms.

```lua
ObjectMover(--[[(1)]]objectReference) : --[[(1)]]objectReference | falseObjectMover(--[[(1)]]objectReference) : --[[(1)]]objectReference | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the mover the player is on.

```lua
local mover = ObjectMover('player')local mover = ObjectMover('player')
```