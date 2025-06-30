---
title: "LeftClickObject - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Interaction/LeftClickObject/"
scraped_at: "2025-06-30T02:52:53.495Z"
---

# LeftClickObject

Right click an object.

```lua
LeftClickObject(--[[(1)]]objectReference) : true | falseLeftClickObject(--[[(1)]]objectReference) : true | false
```

1.  See [Object Reference](../../Objects/ObjectReference/) for more information on possible values.

Example

Interact with dead unit.

```lua
 if UnitIsDeadOrGhost('target') then    LeftClickObject('target')endif UnitIsDeadOrGhost('target') then
    LeftClickObject('target')
end
```