---
title: "stagger - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/stagger/"
scraped_at: "2025-06-30T02:54:02.462Z"
---

# stagger

Returns the percentage of stagger remaining on a target, defaults to player if no target is supplied.

```lua
stagger([arget]) : intstagger([arget]) : int
```

Example

```lua
if stagger('target') <= 50 then  return cast(ArcaneTorrent, 'player)endif stagger('target') <= 50 then
  return cast(ArcaneTorrent, 'player)
end
```