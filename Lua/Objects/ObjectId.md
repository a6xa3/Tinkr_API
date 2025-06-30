---
title: "ObjectId - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectId/"
scraped_at: "2025-06-30T02:53:08.536Z"
---

# ObjectId

Returns the ID of a [`WowGameObject`](../WowGameObject/).

```lua
ObjectId(--[[(1)]]objectReference) : id | falseObjectId(--[[(1)]]objectReference) : id | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the targets id.

```lua
local id = ObjectId('target')local id = ObjectId('target')
```

Do something with the ids of all objects.

```lua
for i, object in ipairs(Objects()) do    local id = ObjectId(object)    -- do something with idendfor i, object in ipairs(Objects()) do
    local id = ObjectId(object)
    -- do something with id
end
```