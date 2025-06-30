Integration
Most often you will want to integrate the GUI builder with your custom routine.

There are many different ways you can do that but here we will show you how to:

Register a custom routine.
Add a slash command to toggle a config option.
Add a GUI and a slash command to show the GUI.
Connect our GUI to our routine.
Listen for GUI changes, updating local values.
Add a custom routine method for checking values.
This is a progressive tutorial, we will start with no options and end with a fully developed system.

The steup
First we will start with a hard-coded toggle for the AoE value.

local Tinkr = ...
local Routine = Tinkr.Routine
 
-- A simple table to store your config options
local my_options = {
    aoe = false
}
 
-- Register your routine with Tinkr
Routine:RegisterRoutine(function()
    -- here we check my_options.aoe before casting an AoE spell
    if my_options.aoe and castable(Consecration) then
        return cast(Consecration)
    end
end, Routine.Classes.Paladin, "my_routine")
This value is hard-coded and users would need to make changes to the file, this no good! Let's take care of that.

Adding your slash command
The next step is adding a slash command that can be used to toggle AoE on or off.

local Tinkr = ...
local Routine = Tinkr.Routine
local Commands = Tinkr.Util.Commands 
 
-- Create your /myroutine slash command.
local MyCommands = Commands:New("myroutine") 
 
-- A simple table to store your config options
local my_options = {
    aoe = false
}
 
-- Register your routine with Tinkr
Routine:RegisterRoutine(function()
    -- here we check my_options.aoe before casting an AoE spell
    if my_options.aoe and castable(Consecration) then
        return cast(Consecration)
    end
end, Routine.Classes.Paladin, "my_routine")
 
-- Register a command for toggling AoE on or off -- 
MyCommands:Register("aoe", function()
    my_options.aoe = not my_options.aoe -- flips or "toggles" the value
 
    if my_options.aoe then
        Tinkr:log("AoE Enabled")
    else
        Tinkr:log("AoE Disabled")
    end
end, "Toggles AoE on or off") 
We import the Commands utility.
We create a new slash command called /myroutine.
We register the /myroutine aoe command to toggle the value.
At this point, you can now type /myroutine aoe in-game to toggle AoE on or off for your routine. Simple, but limited. The value is not saved and there is no GUI to see what the current value is.

Adding a GUI
Next, we"ll add a GUI that has a single checkbox for controlling AoE.

local Tinkr = ...
local Routine = Tinkr.Routine
local Commands = Tinkr.Util.Commands
local GUIBuilder = Tinkr.Util.GUIBuilder 
 
-- Create your /myroutine slash command.
local MyCommands = Commands:New("myroutine")
 
-- A simple table to store your config options
local my_options = {
    aoe = false
}
 
-- Register your routine with Tinkr
Routine:RegisterRoutine(function()
    -- here we check my_options.aoe before casting an AoE spell
    if my_options.aoe and castable(Consecration) then
        return cast(Consecration)
    end
end, Routine.Classes.Paladin, "my_routine")
 
-- Register a command for toggling AoE on or off
MyCommands:Register("aoe", function()
    my_options.aoe = not my_options.aoe -- flips or "toggles" the value
 
    if my_options.aoe then
        Tinkr:log("AoE Enabled")
    else
        Tinkr:log("AoE Disabled")
    end
end, "Toggles AoE on or off")
 
-- Create a new GUI Builder instance for your routine -- 
local Builder = GUIBuilder:New {
    config = "my_routine"
}
 
-- Create a new Window with a single Checkbox element inside it
local MyRoutineConfig = Builder:Window {
    key = "my_window",
    title = "My Routine Config",
    width = 350,
    height = 100,
    content = {
        Builder:Checkbox {
            key = "aoe",
            label = "Use AoE Spells",
            description = "Toggles the use of AoE spells",
            default = "yes"
        }
    }
}
 
-- This will be used to keep a reference to the opened GUI
local MyRoutineWindow
 
-- Next, add a command to show the config GUI
MyCommands:Register("config", function()
    -- We don't have a window, lets build one
    if not MyRoutineWindow then
        MyRoutineWindow = Builder:Build(MyRoutineConfig)
    -- We have a window, lets release it, this also closes it
    elseif MyRoutineWindow:IsShown() then
        MyRoutineWindow:Release()
        MyRoutineWindow = false
    end
end, "Shows the config options window") 
We import the GUIBuilder utilty.
We create a new GUIBuilder instance for our routine.
We create a simple Window with a single checkbox for toggling AoE.
We create a new slash command called /myroutine config that opens and closes the GUI.
You can now type /myroutine config in-game to toggle the config options window. Right now the value is not connected to anything, but we'll fix that in the next step.

Connecting things together
Now it's time to connect things together, so clicking our GUI button will change our routines my_options table.

local Tinkr = ...
local Routine = Tinkr.Routine
local Commands = Tinkr.Util.Commands
local GUIBuilder = Tinkr.Util.GUIBuilder
 
-- Create your /myroutine slash command.
local MyCommands = Commands:New("myroutine")
 
-- A simple table to store your config options -- 
-- You can now keep your default values here, just remember to
-- use the GUI builder values, like "yes" and "no" instead of
-- true or false.
local my_options = {
    aoe = "yes"
}
 
-- Add a custom routine method to aid in the checking of "yes"/"no" values.
Routine:RegisterLibrary({
    checked = function(option)
        if my_options[option] == "yes" then return true end
        return false
    end
}) 
 
-- Register your routine with Tinkr
Routine:RegisterRoutine(function()
    -- here we check the new checked('aoe') before casting an AoE spell -- 
    if checked('aoe') and castable(Consecration) then 
        return cast(Consecration)
    end
end, Routine.Classes.Paladin, "my_routine")
 
-- Create a new GUI Builder instance for your routine
local Builder = GUIBuilder:New {
    config = "my_routine"
}
 
-- Listen to all GUI option changes, call our Apply function each time -- 
-- This acts as a proxy, sending all changes in the GUI, to our local
-- my_options table.  There are many ways to do this, this is just the
-- most simple.  You may find you need more control, in which case you
-- can listen to specific key values and handle them differently.
Builder:Listen('*', function(key, value)
    my_options[key] = value
end) 
 
-- Create a new Window with a single Checkbox element inside it
local MyRoutineConfig = Builder:Window {
    key = "my_window",
    title = "My Routine Config",
    width = 350,
    height = 100,
    content = {
        Builder:Checkbox {
            key = "aoe",
            label = "Use AoE Spells",
            description = "Toggles the use of AoE spells",
            default = "yes"
        }
    }
}
 
-- This will be used to keep a reference to the opened GUI
local MyRoutineWindow
 
-- Next, add a command to show the config GUI
MyCommands:Register("config", function()
    -- We don't have a window, lets build one
    if not MyRoutineWindow then
        MyRoutineWindow = Builder:Build(MyRoutineConfig)
    -- We have a window, lets release it, this also closes it
    elseif MyRoutineWindow:IsShown() then
        MyRoutineWindow:Release()
        MyRoutineWindow = false
    end
end, "Shows the config options window")
 
-- We've moved this down to be after the GUI code. -- 
-- Register a command for toggling AoE on or off
MyCommands:Register("aoe", function()
    -- flips or "toggles" the value
    my_options.aoe =  my_options.aoe == 'yes' and 'no' or 'yes'
 
    if my_options.aoe == 'yes' then
        Tinkr:log("AoE Enabled")
        Builder:Emit('aoe', 'yes') -- send the new value to the GUI
    else
        Tinkr:log("AoE Disabled")
        Builder:Emit('aoe', 'no') -- send the new value to the GUI
    end
end, "Toggles AoE on or off") 
There is a lot to unpack here, but the changes are quite simple.

We updated our my_options table to reflect the new values expected by our GUI.
We register a new routine library that allows us to check the values of checkboxes, this is not required but it makes for cleaner code and lets us show you some more features you might want to use in the future.
We update our routine to use the new library function we just created.
We create a GUI listener that takes GUI changes and makes the same change to our my_options table.
We update the /myroutine aoe command so that it updates the GUI when we call it. We also change how the toggle works so we provide "yes" and "no" instead of true and false.
You now have a routine, with a custom slash commands and a GUI, all connected and working together.

Closing
We hope this helps you, and we hope you can create more awesome things using this new found knowledge.