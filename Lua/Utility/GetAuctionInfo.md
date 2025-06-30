---
title: "GetAuctionInfo - Tinkr API Documentation"
url: "https://docs.tinkr.site/Lua/Utility/GetAuctionInfo/"
scraped_at: "2025-06-30T02:53:20.003Z"
---

# GetAuctionInfo

Gets information about an auction (this is classic only).

```lua
GetAuctionInfo(string, number) : InfoGetAuctionInfo(string, number) : Info
```

Example

```lua
---Returns current auction info for the given type and page index---@param type '"list"' | '"bidder"' | '"owner"'---@param index number---@return number, number, number, string, number, string, number, string, string@itemID, expiresAt, expiresAtString, currentBid, currentBidString, buyout, buyoutString, creatorfunction GetAuctionInfo(type, index) end---Returns current auction info for the given type and page index
---@param type '"list"' | '"bidder"' | '"owner"'
---@param index number
---@return number, number, number, string, number, string, number, string, string@itemID, expiresAt, expiresAtString, currentBid, currentBidString, buyout, buyoutString, creator
function GetAuctionInfo(type, index) end
```