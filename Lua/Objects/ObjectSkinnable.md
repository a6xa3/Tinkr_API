---
title: "ObjectSkinnable - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectSkinnable/"
scraped_at: "2025-06-30T02:53:12.005Z"
---

# ObjectSkinnable

Returns if a [`WowGameObject`](../WowGameObject/) is skinned or not.

```lua
ObjectSkinnable(--[[(1)]]objectReference) : true | falseObjectSkinnable(--[[(1)]]objectReference) : true | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if the target can be skinned.

```lua
local skinnable = ObjectSkinnable('target')local skinnable = ObjectSkinnable('target')
```