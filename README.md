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

* lua/newmodule - simple and powerfull way to define module, and load sub-modules
* lua/provide - package management
* lua/minimal - The Bootstrap of the framework (include newmodule and provide)
* love/lovemodular - LOVE module and LOVE callbacks managment

# Features not released yet

* lua/classcommons2 - Multiple class system support
* love/gui - GUI for love
* love/inputs - inputs absraction layer
* lua/strict - Strict environment enforcement
* lua/metalock - Metatable locking system
* lua/tableprint - Show table as string (With inspect-lua)
* lua/database - Database support and schema managment
* lua/pathfix - Fix package path
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

