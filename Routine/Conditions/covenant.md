---
title: "covenant - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/covenant/"
scraped_at: "2025-06-30T02:53:45.340Z"
---

# covenant

Returns the players covenant

```lua
covenant() : numbercovenant() : number
```

Example

```lua
if covenant() == Covenant.Venthyr then  return print('We are a member of the Venthyr covenant')endif covenant() == Covenant.Venthyr then
  return print('We are a member of the Venthyr covenant')
end
```

Enum

```lua
Covenant = {    None = 0,    Kyrian = 1,    Venthyr = 2,    NightFae = 3,    Necrolord = 4}Covenant = {
    None = 0,
    Kyrian = 1,
    Venthyr = 2,
    NightFae = 3,
    Necrolord = 4
}
```