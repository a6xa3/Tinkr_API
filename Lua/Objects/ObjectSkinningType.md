---
title: "ObjectSkinningType - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectSkinningType/"
scraped_at: "2025-06-30T02:53:12.243Z"
---

# ObjectSkinningType

Returns the skinning type of a [`WowGameObject`](../WowGameObject/).

```lua
ObjectSkinningType(--[[(1)]]objectReference) : number | falseObjectSkinningType(--[[(1)]]objectReference) : number | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if the target is a can be skinned for herbs. \`\`\` lua -- \[\[

enum SkinType : int { HERBALISM = 0x100, MINING = 0x200, ENGINEERING = 0x8000 };

````
]]local skintype = ObjectSkinningType('target')if skintype == HERBALISM then    print("OMG A HERB")end```]]
local skintype = ObjectSkinningType('target')
if skintype == HERBALISM then
    print("OMG A HERB")
end
```
````