Accessing Values
All element values (and even selected tabs, window positions, etc) can be easily accessed.

Keys
Almost all elements take a required key parameter, this value must be unique across all other keys in your GUI. If a key is used more than once you will see a validation error letting you know what key was used more than once.

Accessing values
To access the value of an element, all you need is the elements key.

local Builder = GUIBuilder:New {
    config = "my_gui"
}
 
local Window = Builder:Window {
    key = "my_window",
    title = "My Config Window",
    width = 250,
    height = 350,
    content = {
        Builder:Checkbox {
            key = "my_checkbox",
            label = "My Checkbox"
            description = "This is a simple checkbox",
            default = "yes"
        }
    }
}
 
Builder:Build(Window)
 
-- You can access the value using the elements key
Builder:GetConfig("my_checkbox")
 
-- If the value has not be set or shown to the user once, you can
-- provide a default value as well.
Builder:GetConfig("my_checkbox", "no")
Listen for changes
Another option is to listen for GUI changes, all elements emit their value when changed.

local Builder = GUIBuilder:New {
    config = "my_gui"
}
 
-- Listen to all element values
Builder:Listen('*', function(key, value)
    print(key .. ' = ' .. value)
end)
 
-- listen to only the my_checkbox element
Builder:Listen('my_checkbox', function(key, value)
    print(key .. ' = ' .. value)
end)
Emit new values
If you would like to update your GUI from external sources, possibly from another GUI or slash command, you can emit the value and your GUI will update accordingly.

local Builder = GUIBuilder:New {
    config = "my_gui"
}
 
-- check the my_checkbox GUI element
Builder:Emit('my_checkbox', "yes")
 
-- uncheck the my_checkbox GUI element
Builder:Emit('my_checkbox', "yes")