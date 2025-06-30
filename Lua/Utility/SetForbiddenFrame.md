---
title: "SetForbiddenFrame - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/SetForbiddenFrame/"
scraped_at: "2025-06-30T02:53:23.115Z"
---

# SetForbiddenFrame

Force a frame to not be forbidden, allowing lua interactiosn on it

```lua
SetForbiddenFrame(frame): booleanSetForbiddenFrame(frame): boolean
```

Example

Allow lua click on a frame like the mailbox to send gold

\`\`\`lua if SecureTransferDialog.Button1 and SecureTransferDialog.Button1:IsShown() and SecureTransferDialog.Button1:IsVisible() then SetForbiddenFrame(SecureTransferDialog.Button1, false) SetForbiddenFrame(SecureTransferButton.Button1\[0\], false)

```
        Eval("SecureTransferButton.Button1:Click()", "eval")        end        ```        Eval("SecureTransferButton.Button1:Click()", "eval")
        end
        ```
```