---
title: "ObjectLootable - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectLootable/"
scraped_at: "2025-06-30T02:53:09.121Z"
---

# ObjectLootable

Returns if a [`WowGameObject`](../WowGameObject/) is lootable or not.

```lua
ObjectLootable(--[[(1)]]objectReference) : true | falseObjectLootable(--[[(1)]]objectReference) : true | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if the target can be looted.

```lua
local lootable = ObjectLootable('target')local lootable = ObjectLootable('target')
```