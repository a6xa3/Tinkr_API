---
title: "WowGameObject - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/WowGameObject/"
scraped_at: "2025-06-30T02:53:17.501Z"
---

# WowGameObject

`WowGameObject` is a userdata type used by the Tinkr API to reference an internal game object. This direct object reference is the most performant way to pass objects around.

Note

All `WowGameObject` references are ephemeral, and should never be stored for use later. **Use the object inside the context of the iteration or directly after obtaining it.** There is no guarantee on an objects lifetime and they will be garbage collected as soon as possible.

## WowGameObject Types

Types are defined by the following Enum:

```cpp
enum ObjectType {    Object, // 0    Item,    Container,    AzeriteEmpoweredItem,    AzeriteItem,    Unit,    Player,    ActivePlayer,    GameObject,    DynamicObject,    Corpse,    AreaTrigger,    SceneObject,    ConversationData, // 13};enum ObjectType {
    Object, // 0
    Item,
    Container,
    AzeriteEmpoweredItem,
    AzeriteItem,
    Unit,
    Player,
    ActivePlayer,
    GameObject,
    DynamicObject,
    Corpse,
    AreaTrigger,
    SceneObject,
    ConversationData, // 13
};
```

Example

Getting a single `WowGameObject` reference.

```lua
local object = Object(unitID)-- handle objectlocal object = Object(unitID)
-- handle object
```

Getting an array of only `WowGameObject`'s of type `GameObject`.

```lua
local objects = Objects(8)-- handle GameObject'slocal objects = Objects(8)
-- handle GameObject's
```