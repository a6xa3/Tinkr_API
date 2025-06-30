---
title: "powermax - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/powermax/"
scraped_at: "2025-06-30T02:53:59.261Z"
---

# powermax

Returns the maximum power for power type on unit

```lua
powermax([type, target]) : numberpowermax([type, target]) : number
```

Example

```lua
local maxfury = powermax()local curfury = power() if maxfury - curfury > 50 then  return print('We have a large deficit, generate fury')endlocal maxfury = powermax()
local curfury = power()

if maxfury - curfury > 50 then
  return print('We have a large deficit, generate fury')
end
```