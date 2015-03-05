# Dragoon Framework

Dragoon Framework - Framework for Lua, LÖVE and more ...

planned structure :
```
dragoon-framwork/
    lua/           The common Lua modules
        minimal/   The common bootstrap Lua modules
    love/          The LÖVE 2D specific modules
    nginx/         The NGINX specific modules
    a1/            The AlephOne specific modules
```

# Features released


* [lua/minimal](https://github.com/tst2005/lua-minimal)/ - The Bootstrap of the framework (include newmodule, provide and pathfix)

> * [newmodule](https://github.com/tst2005/lua-newmodule) - simple and powerfull way to define module, and load sub-modules
> * [provide](https://github.com/tst2005/lua-provide) - package management
> * [pathfix](https://github.com/tst2005/lua-minimal/blob/master/pathfix.lua) - Fix package path

* [lua/classcommons2](https://github.com/tst2005/lua-classcommons2)/ - Multiple class system support
* [love/modular](https://github.com/tst2005/lovemodular)/ - LOVE module and LOVE callbacks managment
* [love/input](https://github.com/tst2005/love-input/)/ - input abstraction layer



# Features not released yet

* all/networks - multiple cross-compatible network support.
* -- See [love-network](https://github.com/tst2005/love-network/).
* lua/strict - Strict environment enforcement
* lua/metalock - Metatable locking system
* lua/tableprint - Show table as string (with [lua-inspect](https://github.com/tst2005/lua-inspect))
* lua/database - Database support and schema managment
* lua/compat-env - Fix the environment functions
* lua/utf8 - UTF8 utils
* lua/multilang - Localized text support
* love/loader - Powerfull way to load rescources
* lua/color - color utility (third party)
* love/redshift - redshift-like support for love
* love/idle - idle signal module
* lua/sandbox - secure virtual environement for Lua
* love/sandbox - secure virtual environement for LOVE
* love/gui - GUI for love


# Studying

## Unit Test

* [busted](https://github.com/Olivine-Labs/busted), [doc](http://olivinelabs.com/busted/#overview)
* [telescope](https://github.com/norman/telescope)

## Debug utils

* https://github.com/cloudwu/lua-trace
* https://rocks.moonscript.org/modules/hisham/lutrace
* https://github.com/ignacio/StackTracePlus
* https://rocks.moonscript.org/modules/gunnar_z/debug.lua
* https://github.com/pkulchenko/MobDebug/

