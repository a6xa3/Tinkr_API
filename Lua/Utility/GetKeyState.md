---
title: "GetKeyState - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/GetKeyState/"
scraped_at: "2025-06-30T02:53:20.396Z"
---

# GetKeyState

Gets the last time a game tick happened.

```lua
-- Find CGKeyCode's here -- https://github.com/phracker/MacOSX-SDKs/blob/master/MacOSX10.6.sdk/System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/HIToolbox.framework/Versions/A/Headers/Events.h#L198GetKeyState(CGKeyCode) : boolean-- Find CGKeyCode's here

-- https://github.com/phracker/MacOSX-SDKs/blob/master/MacOSX10.6.sdk/System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/HIToolbox.framework/Versions/A/Headers/Events.h#L198
GetKeyState(CGKeyCode) : boolean
```

Example

```lua
local keybindings = {} function OnKeysDown(keys)for k, v in pairs(keys) doif not GetKeyState(v) thenreturn falseendendreturn trueend function RegisterKeyBinding(keys, callback)table.insert(keybindings, { keys = keys, callback = callback })end C_Timer.NewTicker(0.001, function()for k, v in pairs(keybindings) doif OnKeysDown(v.keys) thenif not v.fired thenv.fired = truev.callback(true)endelsev.fired = nilendendend) RegisterKeyBinding({ 0x38, 0x00 }, function()print("Shift+a executed")end)local keybindings = {}

function OnKeysDown(keys)
for k, v in pairs(keys) do
if not GetKeyState(v) then
return false
end
end
return true
end

function RegisterKeyBinding(keys, callback)
table.insert(keybindings, { keys = keys, callback = callback })
end

C_Timer.NewTicker(0.001, function()
for k, v in pairs(keybindings) do
if OnKeysDown(v.keys) then
if not v.fired then
v.fired = true
v.callback(true)
end
else
v.fired = nil
end
end
end)

RegisterKeyBinding({ 0x38, 0x00 }, function()
print("Shift+a executed")
end)
```