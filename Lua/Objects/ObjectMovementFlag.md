---
title: "ObjectMovementFlag - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/ObjectMovementFlag/"
scraped_at: "2025-06-30T02:53:09.307Z"
---

# ObjectMovementFlag

Returns the current movement state of a Unit

```lua
ObjectMovementFlag(--[[(1)]]objectReference) : numberObjectMovementFlag(--[[(1)]]objectReference) : number
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Check if the target can be looted. `lua local Flags = { NONE = 0x00000000, FORWARD = 0x00000001, BACKWARD = 0x00000002, STRAFELEFT = 0x00000004, STRAFERIGHT = 0x00000008, TURNLEFT = 0x00000010, TURNRIGHT = 0x00000020, PITCHUP = 0x00000040, PITCHDOWN = 0x00000080, WALKMODE = 0x00000100, ONTRANSPORT = 0x00000200, LEVITATING = 0x00000400, ROOT = 0x00000800, FALLING = 0x00001000, FALLINGFAR = 0x00002000, PENDINGSTOP = 0x00004000, PENDINGSTRAFESTOP = 0x00008000, PENDINGFORWARD = 0x00010000, PENDINGBACKWARD = 0x00020000, PENDINGSTRAFELEFT = 0x00040000, PENDINGSTRAFERIGHT = 0x00080000, PENDINGROOT = 0x00100000, SWIMMING = 0x00200000, ASCENDING = 0x00400000, DESCENDING = 0x00800000, CAN_FLY = 0x01000000, FLYING = 0x02000000, SPLINEELEVATION = 0x04000000, SPLINEENABLED = 0x08000000, WATERWALKING = 0x10000000, SAFEFALL = 0x20000000, HOVER = 0x40000000 } local flag = ObjectMovementFlag('target') if flag == Flags.FORWARD then print("YAY WALKING FORWARD") end`