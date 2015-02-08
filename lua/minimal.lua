--[[--------------------------------------------------------
        -- Framework - A library for Lua and LOVE --
        -- Copyright (c) 2014-2015 TsT worldmaster.fr --
--]]--------------------------------------------------------

-- This file is usefull to load the dragoon-framework/lua/minimal/init.lua
-- when :
--  * the lua package.path was not yet fixed
--  * the newmodule module was not available yet
-- by this way the dragoon-framework/init.lua are able to require("dragoon-framework.lua.minimal") without any .init suffix

local path = (... or ""):gsub("%.init$", "")
path = path~="" and path.."." or ""
return require(path .. "init")
