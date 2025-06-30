---
title: "Movement - Tinkr API Documentation"
url: "https://docs.tinkr.site/Modules/Util/Movement/"
scraped_at: "2025-06-30T02:53:30.706Z"
---

# Movement

`Tinkr.Util.Movement`

```lua
-- Return-- Bool: workedfunction Movement:Hook() -- Return-- Bool: workedfunction Movement:RemoveHook() -- Return-- Bool: hook Statusfunction Movement:IsHooked() -- Return-- Bool: statefunction Movement:GetStatus() -- Return-- Bool: worked-- Bool: updated statefunction Movement:Toggle() -- Return-- Bool: worked-- Bool: updated statefunction Movement:DisableMovements() -- Return-- Bool: worked-- Bool: updated statefunction Movement:EnableMovements()-- Return
-- Bool: worked
function Movement:Hook()

-- Return
-- Bool: worked
function Movement:RemoveHook()

-- Return
-- Bool: hook Status
function Movement:IsHooked()

-- Return
-- Bool: state
function Movement:GetStatus()

-- Return
-- Bool: worked
-- Bool: updated state
function Movement:Toggle()

-- Return
-- Bool: worked
-- Bool: updated state
function Movement:DisableMovements()

-- Return
-- Bool: worked
-- Bool: updated state
function Movement:EnableMovements()
```

```lua
local Tinkr = ...local Movement = Tinkr.Util.Movement Movement:Hook()Movement:Toggle()local Tinkr = ...
local Movement = Tinkr.Util.Movement

Movement:Hook()
Movement:Toggle()
```