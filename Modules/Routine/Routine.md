---
title: "Routine - Tinkr API Documentation"
url: "https://docs.tinkr.site/Modules/Routine/Routine/"
scraped_at: "2025-06-30T02:53:26.634Z"
---

# Routine

`Routine.Routine`

```lua
-- libName and Class parameters are not requiredfunction Routine:Inject(metaTable, libName, Routine.Classes.Class) -- Inject Aliasesfunction Routine:InjectLib(...)function Routine:InjectLibrary(...)function Routine:LoadLib(...)function Routine:LoadLibrary(...)function Routine:RegisterLib(...)function Routine:RegisterLibrary(...) function Routine:RegisterRoutine(callback, class, spec)function Routine:RegisterSpellbook(spellbook, class)function Routine:LoadForSpec()function Routine:LoadRoutine(id)function Routine:RegisterLocalRoutines()function Routine:RegisterLocalSpellbooks()function Routine:RegisterLocal()function Routine:Toggle(state)function Routine:Enable()function Routine:Disable()-- libName and Class parameters are not required
function Routine:Inject(metaTable, libName, Routine.Classes.Class)

-- Inject Aliases
function Routine:InjectLib(...)
function Routine:InjectLibrary(...)
function Routine:LoadLib(...)
function Routine:LoadLibrary(...)
function Routine:RegisterLib(...)
function Routine:RegisterLibrary(...)

function Routine:RegisterRoutine(callback, class, spec)
function Routine:RegisterSpellbook(spellbook, class)
function Routine:LoadForSpec()
function Routine:LoadRoutine(id)
function Routine:RegisterLocalRoutines()
function Routine:RegisterLocalSpellbooks()
function Routine:RegisterLocal()
function Routine:Toggle(state)
function Routine:Enable()
function Routine:Disable()
```

`Routine Libraries example`

```lua
local Tinkr = ... local Routine = Tinkr.Routine local MyMethods = {} function MyMethods.Internal()    -- MyMethods is loaded with a classs, so class spells are also exposed    print(AimedShot)     -- passing to tinkr global UnitName an object    print('Hi from an internal')     -- passing to tinkr global UnitName an object    print('internal', UnitName(Object('player')))     -- Routine health function    print('internal', health('player'))     print('bye from an internal') end function MyMethods.Test(a)    -- passing to tinkr global UnitName an object    print(a, UnitName(Object('player')))     -- Routine health function    print(a, health('player'))     -- This will stil work    MyMethods.Internal()end local MyMethods_T = {} function MyMethods_T.Internal()    -- MyMethods_T is not loaded with a class, no class spells are exposed    print(AimedShot)     -- passing to tinkr global UnitName an object    print('Hi from an internal')     -- passing to tinkr global UnitName an object    print('internal', UnitName(Object('player')))     -- Routine health function    print('internal', health('player'))     print('bye from an internal') end function MyMethods_T.Test(a)    -- passing to tinkr global UnitName an object    print(a, UnitName(Object('player')))     -- Routine health function    print(a, health('player'))     -- This will stil work    MyMethods_T.Internal()end -- Inject a third party library with the prefix Test_, we can also expose a classes spells if we wantRoutine:Inject(MyMethods, 'Test_', Routine.Classes.Hunter) -- Inject a third party library as a 'global' (dangerous, can overwrite other methods!)Routine:Inject(MyMethods_T, false) Routine:RegisterRoutine(function()    Test_Test('Test_Test')    Test('Test')    print(AimedShot) end, Routine.Classes.Hunter, 'aname')local Tinkr = ...

local Routine = Tinkr.Routine

local MyMethods = {}

function MyMethods.Internal()
    -- MyMethods is loaded with a classs, so class spells are also exposed
    print(AimedShot)

    -- passing to tinkr global UnitName an object
    print('Hi from an internal')

    -- passing to tinkr global UnitName an object
    print('internal', UnitName(Object('player')))

    -- Routine health function
    print('internal', health('player'))

    print('bye from an internal')

end

function MyMethods.Test(a)
    -- passing to tinkr global UnitName an object
    print(a, UnitName(Object('player')))

    -- Routine health function
    print(a, health('player'))

    -- This will stil work
    MyMethods.Internal()
end

local MyMethods_T = {}

function MyMethods_T.Internal()
    -- MyMethods_T is not loaded with a class, no class spells are exposed
    print(AimedShot)

    -- passing to tinkr global UnitName an object
    print('Hi from an internal')

    -- passing to tinkr global UnitName an object
    print('internal', UnitName(Object('player')))

    -- Routine health function
    print('internal', health('player'))

    print('bye from an internal')

end

function MyMethods_T.Test(a)
    -- passing to tinkr global UnitName an object
    print(a, UnitName(Object('player')))

    -- Routine health function
    print(a, health('player'))

    -- This will stil work
    MyMethods_T.Internal()
end

-- Inject a third party library with the prefix Test_, we can also expose a classes spells if we want
Routine:Inject(MyMethods, 'Test_', Routine.Classes.Hunter)

-- Inject a third party library as a 'global' (dangerous, can overwrite other methods!)
Routine:Inject(MyMethods_T, false)

Routine:RegisterRoutine(function()
    Test_Test('Test_Test')
    Test('Test')
    print(AimedShot)

end, Routine.Classes.Hunter, 'aname')
```