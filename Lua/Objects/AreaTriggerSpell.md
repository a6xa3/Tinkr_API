---
title: "AreaTriggerSpell - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Objects/AreaTriggerSpell/"
scraped_at: "2025-06-30T02:53:03.306Z"
---

# AreaTriggerSpell

Returns the spellID of a [`WowGameObject`](../WowGameObject/) representation of an Area Trigger

```lua
AreaTriggerSpell(--[[(1)]]objectReference) : id | falseAreaTriggerSpell(--[[(1)]]objectReference) : id | false
```

1.  See [Object Reference](../ObjectReference/) for more information on possible values.

Example

Get the id.

```lua
local id = AreaTriggerSpell(object)local id = AreaTriggerSpell(object)
```