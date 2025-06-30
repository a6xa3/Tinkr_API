---
title: "gcd - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/gcd/"
scraped_at: "2025-06-30T02:53:49.616Z"
---

# gcd

Returns seconds before Global Cooldown is reset or 0.

```lua
gcd() : integergcd() : integer
```

Example

```lua
if gcd() then print ('Everything on cooldown!)endif gcd() then 
print ('Everything on cooldown!)
end 
```

Note

This is based on GetSpellCooldown() and GetTime()