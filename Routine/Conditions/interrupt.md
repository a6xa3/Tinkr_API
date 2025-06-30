---
title: "interrupt - Tinkr API Documentation"
url: "https://docs.tinkr.site/Routine/Conditions/interrupt/"
scraped_at: "2025-06-30T02:53:50.790Z"
---

# interrupt

Returns if the target is casting a spell that can be interrupted.

```lua
interrupt() : booleaninterrupt() : boolean
```

Example

```lua
if interrupt() then   return cast(Rebuke, 'target')endif interrupt() then 
  return cast(Rebuke, 'target')
end 
```

Note

This does not check for range, so doing a quick check for your interrupt's range is advised.