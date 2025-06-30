---
title: "ObjectType - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectType/"
scraped_at: "2025-06-30T02:53:12.623Z"
---

# ObjectType

Returns the type of a [`WowGameObject`](../WowGameObject/).

```lua
ObjectType(--[[(1)]]objectReference) : type | falseObjectType(--[[(1)]]objectReference) : type | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the players current position.

```lua
local name = ObjectType('player')local name = ObjectType('player')
```

Do something with the names of all objects.

```lua
for i, object in ipairs(Objects()) do    local name = ObjectType(object)    -- do something with nameendfor i, object in ipairs(Objects()) do
    local name = ObjectType(object)
    -- do something with name
end
```

Info

**Object Types:**

```lua
Object = 0,Item = 1,Container = 2,AzeriteEmpoweredItem = 3,AzeriteItem = 4,Unit = 5,Player = 6,ActivePlayer = 7,GameObject = 8,DynamicObject = 9,Corpse = 10,AreaTrigger = 11,SceneObject = 12,ConversationData = 13Object = 0,
Item = 1,
Container = 2,
AzeriteEmpoweredItem = 3,
AzeriteItem = 4,
Unit = 5,
Player = 6,
ActivePlayer = 7,
GameObject = 8,
DynamicObject = 9,
Corpse = 10,
AreaTrigger = 11,
SceneObject = 12,
ConversationData = 13
```