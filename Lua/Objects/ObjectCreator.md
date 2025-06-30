---
title: "ObjectCreator - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectCreator/"
scraped_at: "2025-06-30T02:53:07.344Z"
---

# ObjectCreator

Returns the creator of the [`WowGameObject`](../WowGameObject/).

This would be used to check the creator of a fishing bobber for example.

```lua
ObjectCreator(--[[(1)]]objectReference) : --[[(1)]]objectReference | falseObjectCreator(--[[(1)]]objectReference) : --[[(1)]]objectReference | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the creator of an object.

```lua
local creator = ObjectCreator(object)local creator = ObjectCreator(object)
```