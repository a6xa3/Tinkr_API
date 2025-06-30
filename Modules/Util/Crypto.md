---
title: "Crypto - Tinkr API Documentation"
url: "https://docs.tinkr.site/Modules/Util/Crypto/"
scraped_at: "2025-06-30T02:53:28.529Z"
---

# Crypto

`Tinkr.Util.Crypto`

```lua
function AES:IV()function AES:Encrypt(input, key, iv)function AES:Decrypt(input, key, iv)function Hash:MD5(input)function Hash:SHA1(input)function Hash:SHA2(input)function Hash:SHA256(input)function Hash:SHA3(input)function Hash:HMAC(algo, input, key)function Base64:Encode(input)function Base64:Decode(input)function AES:IV()
function AES:Encrypt(input, key, iv)
function AES:Decrypt(input, key, iv)
function Hash:MD5(input)
function Hash:SHA1(input)
function Hash:SHA2(input)
function Hash:SHA256(input)
function Hash:SHA3(input)
function Hash:HMAC(algo, input, key)
function Base64:Encode(input)
function Base64:Decode(input)
```

```lua
local Tinkr = ...local AES = Tinkr.Util.Crypto.AESlocal Common = Tinkr.Common local iv = AES:IV() -- Create a random initialization vector, store this for decryptionlocal key = Common.RandomVariable(32) -- The key length must be 16 (128-bit), 24 (192-bit) or 32 (256-bit) local input = 'this is my encrypted message' local encrypted = AES:Encrypt(input, key, iv)local decrypted = AES:Decrypt(encrypted, key, iv) print(decrypted == input)local Tinkr = ...
local AES = Tinkr.Util.Crypto.AES
local Common = Tinkr.Common

local iv = AES:IV() -- Create a random initialization vector, store this for decryption
local key = Common.RandomVariable(32) -- The key length must be 16 (128-bit), 24 (192-bit) or 32 (256-bit)

local input = 'this is my encrypted message'

local encrypted = AES:Encrypt(input, key, iv)
local decrypted = AES:Decrypt(encrypted, key, iv)

print(decrypted == input)
```

```lua
local Tinkr = ...local Hash = Tinkr.Util.Crypto.Hash local hashed = Hash:SHA3('some value to be hashed')print(hashed) -- algo must be one of md5, sha1 or sha256local hashed = Hash:HMAC('sha256', 'some value to be hashed', 'super secret key')print(hashed)local Tinkr = ...
local Hash = Tinkr.Util.Crypto.Hash

local hashed = Hash:SHA3('some value to be hashed')
print(hashed)

-- algo must be one of md5, sha1 or sha256
local hashed = Hash:HMAC('sha256', 'some value to be hashed', 'super secret key')
print(hashed)
```

```lua
local Tinkr = ...local Base64 = Tinkr.Util.Crypto.Base64 local input = "this is a message to be encoded" local encoded = Base64:Encode(input)local decoded = Base64:Decode(encoded) print(decoded == input)local Tinkr = ...
local Base64 = Tinkr.Util.Crypto.Base64

local input = "this is a message to be encoded"

local encoded = Base64:Encode(input)
local decoded = Base64:Decode(encoded)

print(decoded == input)
```