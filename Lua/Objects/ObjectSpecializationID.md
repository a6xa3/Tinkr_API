---
title: "ObjectSpecializationID - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectSpecializationID/"
scraped_at: "2025-06-30T02:53:12.436Z"
---

# ObjectSpecializationID

Returns the spec ID of a [`WowGameObject`](../WowGameObject/).

```lua
ObjectSpecializationID(--[[(1)]]objectReference) : number | falseObjectSpecializationID(--[[(1)]]objectReference) : number | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if the target is a brewmaster monk. \`\`\` lua -- \[\[ World of Warcraft: Wrath of the Lich King Death Knight

250 - Blood 251 - Frost 252 - Unholy World of Warcraft: Legion Demon Hunter 577 - Havoc 581 - Vengeance Druid 102 - Balance 103 - Feral 104 - World of Warcraft: Mists of Pandaria Guardian 105 - Restoration Hunter 253 - Beast Mastery 254 - Marksmanship 255 - Survival Mage 62 - Arcane 63 - Fire 64 - Frost World of Warcraft: Mists of Pandaria Monk 268 - Brewmaster 269 - Windwalker 270 - Mistweaver Paladin 65 - Holy 66 - Protection 70 - Retribution Priest 256 - Discipline 257 - Holy 258 - Shadow Rogue 259 - Assassination 260 - World of Warcraft: Legion Outlaw 261 - Subtlety Shaman 262 - Elemental 263 - Enhancement 264 - Restoration Warlock 265 - Affliction 266 - Demonology 267 - Destruction Warrior 71 - Arms 72 - Fury 73 - Protection

````
]]local spec = ObjectSpecializationID('target')if spec == Specs.BrewMaster then    print("OMG A TANK")end```]]
local spec = ObjectSpecializationID('target')
if spec == Specs.BrewMaster then
    print("OMG A TANK")
end
```
````