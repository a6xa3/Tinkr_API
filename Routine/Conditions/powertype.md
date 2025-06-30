---
title: "powertype - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/powertype/"
scraped_at: "2025-06-30T02:53:59.654Z"
---

# powertype

Returns if the targets power type or the players power type if no target is supplied.

```lua
powertype([unit]) : PowerTypepowertype([unit]) : PowerType
```

Example

```lua
if powertype('target') == PowerType.Mana then  return cast(Manasteal, 'target')endif powertype('target') == PowerType.Mana then
  return cast(Manasteal, 'target')
end
```