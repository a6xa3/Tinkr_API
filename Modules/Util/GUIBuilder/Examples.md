Complete example

local Tinkr = ...
 
local Builder = Tinkr.Util.GUIBuilder:New {
    config = "example_builder"
}
 
local SimpleCheckboxes = Builder:Group {
    title = "Simple Checkboxes",
    content = {
        Builder:Text "Checkboxes allow you to have 2 states (yes and no) which can be used for enabling or disabling functionality.",
        Builder:Spacer { },
        Builder:Checkbox {
            key = "checkbox_a",
            label = "Checkbox A",
            description = "Description for Checkbox A."
        },
        Builder:Checkbox {
            key = "checkbox_b",
            label = "Checkbox B",
            description = "Description for Checkbox B."
        },
        Builder:Checkbox {
            key = "checkbox_c",
            label = "Checkbox C"
        }
    }
}
 
local TriStateCheckboxes = Builder:Group {
    title = "Tri State Checkboxes",
    content = {
        Builder:Text "Tri State checkboxes allow you to have 3 states (yes, no and half) which can be useful for showing that something is partially enabled.",
        Builder:Spacer { },
        Builder:Checkbox {
            tristate = true,
            key = "tribox_a",
            label = "Tri State A",
            default = "yes"
        },
        Builder:Checkbox {
            tristate = true,
            key = "tribox_b",
            label = "Tri State B",
            default = "half"
        },
        Builder:Checkbox {
            tristate = true,
            key = "tribox_c",
            label = "Tri State C",
            default = "no"
        }
    }
}
 
local RadioCheckboxes = Builder:Group {
    title = "Radio Checkboxes",
    content = {
        Builder:Text "Radios allow you to select between a set of options, much like a dropdown but presented in a different way.",
        Builder:Spacer { },
        Builder:Radio {
            key = "radio_a",
            values = {
                option_a = "Option A",
                option_b = "Option B",
                option_c = "Option C",
                option_d = "Option D"
            }
        },
        Builder:Spacer { },
        Builder:Text "You can also force radios to be stacked instead of displayed inline.",
        Builder:Spacer { height = 14 },
        Builder:Radio {
            key = "radio_b",
            stacked = true,
            values = {
                option_a = "Option A",
                option_b = "Option B",
                option_c = "Option C",
                option_d = "Option D"
            }
        }
    }
}
 
local SingleLineEditBoxGroup = Builder:Group {
    title = "Single Line EditBoxes",
    content = {
        Builder:EditBox {
            key = "editbox_a",
            label = "Edit Box A",
            description = "This editbox has a description with it."
        },
        Builder:EditBox {
            key = "editbox_b",
            label = "Edit Box B",
            placeholder = "This editbox has a placeholder value"
        },
        Builder:EditBox {
            key = "editbox_c",
            label = "Edit Box C",
            placeholder = "Placeholder Value",
            description = "This input requires you to click " .. OKAY,
            button = true
        }
    }
}
 
local MultiLineEditBoxGroup = Builder:Group {
    title = "Multi-Line EditBoxes",
    content = {
        Builder:Rows {
            Builder:Columns {
                Builder:EditBox {
                    key = "multi_editbox_a",
                    label = "Edit Box A",
                    multiline = true,
                    lines = 6,
                    placeholder = "Placeholder value",
                    description = "This is a multi-line edit box.",
                    button = true,
                },
                Builder:EditBox {
                    key = "multi_editbox_b",
                    label = "Edit Box B",
                    multiline = true,
                    lines = 6,
                    placeholder = "Placeholder value",
                    description = "This is a multi-line edit box.",
                }
            }
        }
    }
}
 
local DropdownGroup = Builder:Group {
    title = "Standard Dropdowns",
    content = {
        Builder:Rows {
            Builder:Columns {
                Builder:Dropdown {
                    key = 'dropdown_a',
                    label = "Example Dropdown A",
                    values = {
                        option_a = "Option A",
                        option_b = "Option B",
                        option_c = "Option C",
                        option_d = "Option D",
                        option_e = "Option E",
                    }
                },
                Builder:Dropdown {
                    key = 'dropdown_b',
                    label = "Example Dropdown B",
                    multi = true,
                    description = "This dropdown allows selecting multiple values.",
                    values = {
                        option_a = "Option A",
                        option_b = "Option B",
                        option_c = "Option C",
                        option_d = "Option D",
                        option_e = "Option E",
                    }
                }
            }
        }
    }
}
 
local SliderGroup = Builder:Group {
    title = "Sliders",
    content = {
        Builder:Rows {
            Builder:Columns {
                Builder:Slider {
                    key = 'slider_a',
                    label = "Example Slider A",
                    description = "This slider ranges from 0% (0) to 100% (1).",
                },
                Builder:Slider {
                    key = 'slider_b',
                    label = "Example Slider B",
                    description = "This slider ranges from 25 to 75.",
                    min = 25,
                    max = 75,
                    step = 1,
                    default = 50,
                    percent = false
                }
            }
        }
    }
}
 
local ColorPickerGroup = Builder:Group {
    title = "Color Pickers",
    content = {
        Builder:Rows {
            Builder:Columns {
                Builder:ColorPicker {
                    key = 'color_a',
                    label = "Example Color Picker A",
                    description = "This does not include an alpha value."
                },
                Builder:ColorPicker {
                    key = 'color_b',
                    label = "Example Color Picker B",
                    description = "This includes an alpha value.",
                    alpha = true,
                    default = "#cafebabe"
                },
            }
        }
    }
}
 
local TabGroup = Builder:TabGroup {
    key = "input_tabs",
    tabs = {
        Builder:Tab {
            title = "Checkboxes",
            content = {
                SimpleCheckboxes,
                TriStateCheckboxes,
                RadioCheckboxes
            }
        },
        Builder:Tab {
            title = "Input Boxes",
            content = {
                SingleLineEditBoxGroup,
                MultiLineEditBoxGroup
            }
        },
        Builder:Tab {
            title = "Dropdowns",
            content = {
                DropdownGroup
            }
        },
        Builder:Tab {
            title = "Sliders",
            content = {
                SliderGroup
            }
        },
        Builder:Tab {
            title = "Color Pickers",
            content = {
                ColorPickerGroup
            }
        }
    }
}
 
local HTMLTypographyGroup = Builder:SimpleGroup {
    Builder:HTML [[
        <br/>
        <img src="Interface\Glues\PROMOTIONS\enUS-SBC-Logo" align="center" width="256" height="128" />
        <br/>
        <h1>This is an H1 element</h1>
        <p>This is a paragraph element.  It contains text.</p>
        <br/>
        <h2>This is an H2 element</h2>
        <p>This is yes another paragraph element.  It contains even more text.</p>
        <br/>
        <h3>Here is an H3 element</h3>
        <p>This is <a href="https://tinkr.site/">a link</a>, clicking it will open the URL in your browser.</p>
        <br/>
    ]]
}
 
local TypographyTabGroup = Builder:TabGroup {
    key = "typography_tabs",
    tabs = {
        Builder:Tab {
            title = "Formatting",
            content = {
                Builder:Padding {
                    padding = 5,
                    content = {
                        Builder:Rows {
                            Builder:Text [[
                                This is a simple block of text, you can write words here. Lorem ipsum dolor sit amet,
                                consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                                aliqua.
                            ]],
                            Builder:Spacer {},
                            Builder:Text "Ut enim ad minim veniam, quis nostrud ... in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                            Builder:Spacer {},
                            Builder:Columns {
                                Builder:Image {
                                    image = "Interface\\Glues\\PROMOTIONS\\enUS-SBC-Logo",
                                    width = 256,
                                    height = 128,
                                    fit = true
                                },
                                Builder:Padding {
                                    padding = 5,
                                    content = {
                                        Builder:Text "Ut enim ad minim veniam, quis nostrud exercitation ullamco ... in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                                    }
                                }
                            },
                            Builder:Columns {
                                Builder:Text {
                                    text = "You can change the font and size of the text using options. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                                    size = 14,
                                    font = "Fonts\\MORPHEUS.TTF"
                                },
                                Builder:Text {
                                    text = "Color can be applied by passing a hex value.  This is optional and text will be white by default.",
                                    size = 14,
                                    font = "Fonts\\FRIZQT__.TTF",
                                    color = "3489eb",
                                }
                            },
                        },
                    }
                }
            }
        },
        Builder:Tab {
            title = "HTML",
            content = {
                HTMLTypographyGroup
            }
        }
    }
}
 
local TreeGroup = Builder:TreeGroup {
    key = "example_tree",
    branches = {
        Builder:TreeBranch {
            title = "Input",
            icon = 134063,
            content = {
                TabGroup
            }
        },
        Builder:TreeBranch {
            title = "Typography",
            icon = 134332,
            content = {
                TypographyTabGroup
            }
        }
    }
}
 
local Window = Builder:Window {
    key = "example_window",
    title = "GUI Builder Kitchen Sink",
    width = 800,
    height = 480,
    content = {
        TreeGroup
    }
}
 
Builder:Build(Window)