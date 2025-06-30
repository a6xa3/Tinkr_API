---
title: "RightClickObject - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Interaction/RightClickObject/"
scraped_at: "2025-06-30T02:52:53.873Z"
---

# RightClickObject

Right click an object.

```lua
RightClickObject(--[[(1)]]objectReference) : true | falseRightClickObject(--[[(1)]]objectReference) : true | false
```

1.  See [Object Reference](../../Objects/ObjectReference/) for more information on possible values.

Example

Interact with dead unit.

```lua
 if UnitIsDeadOrGhost('target') then    RightClickObject('target')endif UnitIsDeadOrGhost('target') then
    RightClickObject('target')
end
```