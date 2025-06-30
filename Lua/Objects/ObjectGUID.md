---
title: "ObjectGUID - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectGUID/"
scraped_at: "2025-06-30T02:53:08.140Z"
---

# ObjectGUID

Returns the GUID of a [`WowGameObject`](../WowGameObject/). This is equal to UnitGUID but supports any object

```lua
ObjectGUID(--[[(1)]]objectReference) : string | falseObjectGUID(--[[(1)]]objectReference) : string | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get a units guid.

```lua
local guid = ObjectGUID('target')local guid = ObjectGUID('target')
```

Check if object is the player

```lua
local pguid = ObjectGUID('player')return pguid == guidlocal pguid = ObjectGUID('player')
return pguid == guid
```