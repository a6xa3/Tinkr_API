---
title: "GameObjectType - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/GameObjectType/"
scraped_at: "2025-06-30T02:53:05.787Z"
---

# GameObjectType

Returns the gameobject type of a [`WowGameObject`](../WowGameObject/).

```lua
GameObjectType(--[[(1)]]objectReference) : number | falseGameObjectType(--[[(1)]]objectReference) : number | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if the target is a chair. \`\`\` lua -- \[\[

enum eGameObjType { GOT\_Door=0, GOT\_Button=1, GOT\_QuestGiver=2, GOT\_Chest=3, GOT\_Binder=4, GOT\_Generic=5, GOT\_Trap=6, GOT\_Chair=7, GOT\_SpellFocus=8, GOT\_Text=9, GOT\_Goober=0xa, GOT\_Transport=0xb, GOT\_AreaDamage=0xc, GOT\_Camera=0xd, GOT\_WorldObj=0xe, GOT\_MapObjTransport=0xf, GOT\_DuelArbiter=0x10, GOT\_FishingNode=0x11, GOT\_Ritual=0x12, GOT\_Mailbox=0x13, GOT\_AuctionHouse=0x14, GOT\_SpellCaster=0x16, GOT\_MeetingStone=0x17, GOT\_Unkown18=0x18, GOT\_FishingPool=0x19, GOT\_FORCEDWORD=0xFFFFFFFF, };

````
]]local type = GameObjectType('target')if type == GOT_Chair then    print("OMG A chair, lets sit")end```]]
local type = GameObjectType('target')
if type == GOT_Chair then
    print("OMG A chair, lets sit")
end
```
````