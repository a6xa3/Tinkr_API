---
title: "powerpercent - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/powerpercent/"
scraped_at: "2025-06-30T02:53:59.445Z"
---

# powerpercent

Returns if the percentage of power remaining for a unit of given power type. Defaults to the players power if there's no target or power given. If a target is supplied it defaults to the targets.

```lua
powerpercent([type, target]) : powerpercentpowerpercent([type, target]) : powerpercent
```

Example

```lua
if powerpercent('target') <= 50 then  return cast(ArcaneTorrent, 'player)endif powerpercent('target') <= 50 then
  return cast(ArcaneTorrent, 'player)
end
```