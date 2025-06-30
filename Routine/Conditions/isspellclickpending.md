---
title: "isspellclickpending - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/isspellclickpending/"
scraped_at: "2025-06-30T02:53:51.185Z"
---

# isspellclickpending

Returns if the cursor has a spell requiring a ground click.

```lua
isspellclickpending() : boolean-- altsIsSpellClickPending() : booleanspell() : booleanisspellclickpending() : boolean
-- alts
IsSpellClickPending() : boolean
spell() : boolean
```

Example

```lua
if isspellclickpending('player', 'target') then  -- Do somethingendif isspellclickpending('player', 'target') then
  -- Do something
end
```