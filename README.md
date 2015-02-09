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

* [lua-newmodule](https://github.com/tst2005/lua-newmodule) - simple and powerfull way to define module, and load sub-modules
* [lua-provide](https://github.com/tst2005/lua-provide) - package management
* [lua-minimal](https://github.com/tst2005/lua-minimal) - The Bootstrap of the framework (include newmodule and provide)
* [lovemodular](https://github.com/tst2005/lovemodular) - LOVE module and LOVE callbacks managment
* [pathfix](https://github.com/tst2005/lua-minimal/blob/master/pathfix.lua) - Fix package path

# Features not released yet

* lua/classcommons2 - Multiple class system support
* love/gui - GUI for love
* [love/input](https://github.com/tst2005/love-input/) - input absraction layer
* lua/strict - Strict environment enforcement
* lua/metalock - Metatable locking system
* lua/tableprint - Show table as string (With inspect-lua)
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
* all/networks - multiple cross-compatible network support

