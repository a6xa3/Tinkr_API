---
title: "partydensitycentroid - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/partydensitycentroid/"
scraped_at: "2025-06-30T02:53:56.414Z"
---

# partydensitycentroid

Returns a Vector3 of the most dense area of party members around a given unit of a given range.

```lua
partydensitycentroid(unit, range) : Vector3-- altspartyDensityCentroid(unit, range) : Vector3partydensity(unit, range) : Vector3partydensitycentroid(unit, range) : Vector3
-- alts
partyDensityCentroid(unit, range) : Vector3
partydensity(unit, range) : Vector3
```

Example

```lua
local partyhealtharoundlowest = parthyhealth(lowest, 30)local partycountlowest = partyaround(lowest, 30) if partycountlowest > 3 and partyhealtharoundlowest <= 60 then    local densityCentroid = partydensity(LowestHealth, 30)    return cast(Effloresence, lowest):click(densityCentroid.x, densityCentroid.y,densityCentroid.z)endlocal partyhealtharoundlowest = parthyhealth(lowest, 30)
local partycountlowest = partyaround(lowest, 30)

if partycountlowest > 3 and partyhealtharoundlowest <= 60 then
    local densityCentroid = partydensity(LowestHealth, 30)
    return cast(Effloresence, lowest):click(densityCentroid.x, densityCentroid.y,densityCentroid.z)
end
```