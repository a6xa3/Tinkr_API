---
title: "Getting Started - Tinkr API Documentation"
url: "https://docs.tinkr.site/Modules/Util/GUI%20Builder/"
scraped_at: "2025-06-30T02:53:31.520Z"
---

# Getting Started

GUIBuilder is a simple to use yet powerful GUI Builder, an interface over AceGUI.

The absolute minimal usage would look like this:

```lua
local Tinkr = ...local GUIBuilder = Tinkr.Util.GUIBuilder -- Create a new instance of GUIBuilder.local Builder = GUIBuilder:New {    -- This is the name of your configs .json file, all settings will be stored in    -- this file. GUIBuilder will manage this file, just make sure the name is    -- unique enough that no other GUIs will share the same name.    config = "example_empty" -- would be `configs/example_empty.json`} -- Create a Window element, with no content.local Window = Builder:Window {    key = "example_window",    title = "Empty Window",    width = 250,    height = 350,    content = { }} -- Build the GUI element, this shows the window.Builder:Build(Window)local Tinkr = ...
local GUIBuilder = Tinkr.Util.GUIBuilder

-- Create a new instance of GUIBuilder.
local Builder = GUIBuilder:New {
    -- This is the name of your configs .json file, all settings will be stored in
    -- this file. GUIBuilder will manage this file, just make sure the name is
    -- unique enough that no other GUIs will share the same name.
    config = "example_empty" -- would be `configs/example_empty.json`
}

-- Create a Window element, with no content.
local Window = Builder:Window {
    key = "example_window",
    title = "Empty Window",
    width = 250,
    height = 350,
    content = { }
}

-- Build the GUI element, this shows the window.
Builder:Build(Window)
```