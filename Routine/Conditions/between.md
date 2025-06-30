---
title: "between - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/between/"
scraped_at: "2025-06-30T02:53:40.488Z"
---

# between

Tests that a number is between {low} and {high}

```lua
between(low, IN, high) : booleanbetween(low, IN, high) : boolean
```

Example

```lua
if  between(80, health(lowestEffloresence), 90) then  return cast(Effloresence, lowestEffloresence):click(lowestEffloresencex,lowestEffloresencey,lowestEffloresencez)endif  between(80, health(lowestEffloresence), 90) then
  return cast(Effloresence, lowestEffloresence):click(lowestEffloresencex,lowestEffloresencey,lowestEffloresencez)
end
```