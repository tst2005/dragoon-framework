--[[--------------------------------------------------------
	-- Dragoon Framework - A Framework for Lua --
	-- Copyright (c) 2014-2015 TsT worldmaster.fr --
--]]--------------------------------------------------------

-- Usualy dragoon-framework[.init] load dragoon-framework.lua.minimal
-- => newmodule is available
-- But if dragoon-framework.lua[.init] is loaded at first, we should load dragoon-framework.lua.minimal but we can not use newmodule until done.
-- => newnodule is not available (until dragoon-framework.lua.minimal loaded)

local _M, childrequire
local ok, err = pcall(function(...)
	_M, childrequire = require("newmodule")(...)
end, ...)

local path
if not ok then
	path = (... or ""):gsub("%.init$", "")
	_M = _M or {}
	_M._PATH = path
	path = path ~= "" and path.."." or ""
	childrequire = function(modname)
		return require(path..modname)
	end
end

local function frameworklua()

	local path = assert(_M._PATH)
	path = path ~= "" and path.."." or ""

	local provide = require'provide'
	provide("classcommons2",	path .. "classcommons2")
	childrequire("classcommons2.all")

	provide("jsoncommons2",		path .. "jsoncommons2")

	provide("class",		path .. "classcommons2.class")
	provide("instance",		path .. "classcommons2.instance")

	provide("strict",		path .. "strict")
	provide("tableprint",		path .. "tableprint")
end

local function install()
	childrequire("minimal") -- need dragoon-framework.lua.minimal loaded
	-- Not the package.path should be fixed.

--	local framework_tp_path = childrequire("thirdpartypath")
--	framework_tp_path.install()

	local frameworklua_tp = require "framework-third-party.luaonly"

	print("============")

	local framework_tp = require "framework-third-party"

	frameworklua()
end

_M.install = install
return _M
