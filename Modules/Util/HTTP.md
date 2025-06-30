---
title: "HTTP - Tinkr API Documentation"
url: "https://docs.tinkr.site/Modules/Util/HTTP/"
scraped_at: "2025-06-30T02:53:30.096Z"
---

# HTTP

`Util.Modules.HTTP`

The `HTTP:Request` method can create all types of requests, simple and complex.

Here are a few examples:

```lua
local Tinkr = ...local HTTP = Tinkr.Util.HTTP -- Simple HTTP GETHTTP:Request({    url = 'https://example.com',    method = 'GET',    callback = function (status, res)        if status == 200 then            print(res)        end    end}) -- An authorized JSON GETHTTP:Request({    url = 'https://example.com',    method = 'GET',    headers = {        "Accept: application/json",        "Authorization: bearer token"    },    callback = function (status, res)        if status == 200 then            print(res)        end    end}) -- An authorized form POSTHTTP:Request({    url = 'https://example.com',    method = 'POST',    fields = {        foo = 'bar',        baz = 'bang'    },    headers = {        "Authorization: bearer token"    },    callback = function (status, res)        if status == 200 then            print(res)        end    end}) -- A form POST with filesHTTP:Request({    url = 'https://example.com',    method = 'POST',    fields = {        foo = 'bar',        baz = 'bang'    },    files = {        fileA = "path/to/fileA.txt",        fileB = "path/to/fileB.txt"    },=    callback = function (status, res)        if status == 200 then            print(res)        end    end}) -- A form POST with raw JSON bodyHTTP:Request({    url = 'https://example.com',    method = 'POST',    body = JSON:Encode({ foo = 'bar', baz = 'bang' }),    headers = {        "Content-Type: application/json"    },    callback = function (status, res)        if status == 200 then            print(res)        end    end})local Tinkr = ...
local HTTP = Tinkr.Util.HTTP

-- Simple HTTP GET
HTTP:Request({
    url = 'https://example.com',
    method = 'GET',
    callback = function (status, res)
        if status == 200 then
            print(res)
        end
    end
})

-- An authorized JSON GET
HTTP:Request({
    url = 'https://example.com',
    method = 'GET',
    headers = {
        "Accept: application/json",
        "Authorization: bearer token"
    },
    callback = function (status, res)
        if status == 200 then
            print(res)
        end
    end
})

-- An authorized form POST
HTTP:Request({
    url = 'https://example.com',
    method = 'POST',
    fields = {
        foo = 'bar',
        baz = 'bang'
    },
    headers = {
        "Authorization: bearer token"
    },
    callback = function (status, res)
        if status == 200 then
            print(res)
        end
    end
})

-- A form POST with files
HTTP:Request({
    url = 'https://example.com',
    method = 'POST',
    fields = {
        foo = 'bar',
        baz = 'bang'
    },
    files = {
        fileA = "path/to/fileA.txt",
        fileB = "path/to/fileB.txt"
    },=
    callback = function (status, res)
        if status == 200 then
            print(res)
        end
    end
})

-- A form POST with raw JSON body
HTTP:Request({
    url = 'https://example.com',
    method = 'POST',
    body = JSON:Encode({ foo = 'bar', baz = 'bang' }),
    headers = {
        "Content-Type: application/json"
    },
    callback = function (status, res)
        if status == 200 then
            print(res)
        end
    end
})
```

**THESE METHODS ARE DEPRECATED AND SHOULD NOT BE USED, ONLY HERE FOR LEGACY CODE**

```lua
-- An example of a HTTP GETHTTP:GET('https://example.com', function (status, res)    if status == 200 then        print(res)    endend) -- An example of the HTTP Params helperlocal params = HTTP:Params({ foo = 'bar', baz = 'bang'}) -- An example of a HTTP POSTHTTP:POST('https://example.com', params, function (status, res)    if status == 200 then        print(res)    endend)-- An example of a HTTP GET
HTTP:GET('https://example.com', function (status, res)
    if status == 200 then
        print(res)
    end
end)

-- An example of the HTTP Params helper
local params = HTTP:Params({ foo = 'bar', baz = 'bang'})

-- An example of a HTTP POST
HTTP:POST('https://example.com', params, function (status, res)
    if status == 200 then
        print(res)
    end
end)
```