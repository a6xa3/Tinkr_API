---
title: "hiddenaura - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/hiddenaura/"
scraped_at: "2025-06-30T02:53:50.006Z"
---

# hiddenaura

Returns if the target unit has the `search` spellID in their hidden aura tables

```lua
hiddenaura(search[, target]) : boolhiddenaura(search[, target]) : bool
```

Example

```lua
if hiddenaura(364827) and covenant() == Covenant.Venthyr then  return print('Has venthyr Unity legendary')endif hiddenaura(364827) and covenant() == Covenant.Venthyr then
  return print('Has venthyr Unity legendary')
end
```