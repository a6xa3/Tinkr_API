---
title: "Object - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/Object/"
scraped_at: "2025-06-30T02:53:06.173Z"
---

# Object

Gets a single object.

```lua
Object(--[[(1)]]unitID) : WowGameObjectObject(--[[(1)]]unitID) : WowGameObject
```

1.  See Wowpedia for more information on [WoW Unit IDs](https://wowpedia.fandom.com/wiki/UnitId).

Example

Geth a [`WowGameObject`](../WowGameObject/) reference to the player.

```lua
local object = Object('player')-- handle objectlocal object = Object('player')
-- handle object
```

Note

All `WowGameObject` references are ephemeral, and should never be stored for use later. **Use the object inside the context of the iteration or directly after obtaining it.** There is no guarantee on an objects lifetime and they will be garbage collected as soon as possible.