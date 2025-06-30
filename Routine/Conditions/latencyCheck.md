---
title: "latencyCheck - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/latencyCheck/"
scraped_at: "2025-06-30T02:53:54.108Z"
---

# latencyCheck

Returns true if your latency is greater than GCD, otherwise false.

```lua
latencyCheck() : booleanlatencyCheck() : boolean
```

Example

```lua
if latencyCheck() then   return endif latencyCheck() then 
  return 
end 
```

Note

This is based on GetNetStats() and GetSpellCooldown()