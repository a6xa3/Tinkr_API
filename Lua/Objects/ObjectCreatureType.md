---
title: "ObjectCreatureType - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectCreatureType/"
scraped_at: "2025-06-30T02:53:07.545Z"
---

# ObjectCreatureType

Returns the creature type of a [`WowGameObject`](../WowGameObject/).

```lua
ObjectCreatureType(--[[(1)]]objectReference) : type | falseObjectCreatureType(--[[(1)]]objectReference) : type | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the targets creature type.

```lua
local type, typeStr = ObjectCreatureType('target')local type, typeStr = ObjectCreatureType('target')
```

Do something with the create type of all objects.

```lua
for i, object in ipairs(Objects()) do    local type, typeStr = ObjectCreatureType('target')    print('target type is', type, 'a', typeStr)    -- do something with typeendfor i, object in ipairs(Objects()) do
    local type, typeStr = ObjectCreatureType('target')
    print('target type is', type, 'a', typeStr)
    -- do something with type
end
```

Creature Type IDs

Retail ShadowlandsClassic TBC

ID

Type

ID

Type

1

Beast

9

Mechanical

2

Dragonkin

10

Not specified

3

Demon

11

Totem

4

Elemental

12

Non-combat Pet

5

Giant

13

Gas Cloud

6

Undead

14

Wild Pet

7

Humanoid

15

Aberration

8

Critter

ID

Type

ID

Type

1

Beast

9

Mechanical

2

Dragonkin

10

Not specified

3

Demon

11

Totem

4

Elemental

12

Non-combat Pet

5

Giant

13

Gas Cloud

6

Undead

7

Humanoid

8

Critter