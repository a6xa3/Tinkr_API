---
title: "RotateVector - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/RotateVector/"
scraped_at: "2025-06-30T02:53:22.735Z"
---

# RotateVector

Rotate a vector (x,y,z) and apply a distance calculation to it.

For instance getting the vector 10 yards infront of the players facing direction.

```lua
RotateVector(x,y,z,theta,distance) : x,y,zRotateVector(x,y,z,theta,distance) : x,y,z
```

1.  See [Object Reference](../../Objects/ObjectReference/) for more information on possible values.

Example

Get the Vector 10 yards infront of the direction of the player.

```lua
local px, py, pz = ObjectPosition('player')local theta = ObjectRotation('player')local height = ObjectHeight('player') local X, Y, Z = RotateVector(px, py, pz, theta, 10);local px, py, pz = ObjectPosition('player')
local theta = ObjectRotation('player')
local height = ObjectHeight('player')

local X, Y, Z = RotateVector(px, py, pz, theta, 10);
```