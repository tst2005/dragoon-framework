--[[--------------------------------------------------------
	-- Framework - A library for Lua and LOVE --
	-- Copyright (c) 2014-2015 TsT worldmaster.fr --
--]]--------------------------------------------------------

-- at this step, newmodule is not available.

local path = (... or ""):gsub("%.init$", "")
path = path ~= "" and path.."." or ""

-- Load the dragoon-framework/lua/minimal/init.lua via dragoon-framework/lua/minimal.lua
require(path .. "lua.minimal")

-- at this step the package.path should be fixed,
-- newmodule and provide must be available

local _M, creq, breq = require("newmodule")(...)

local function installpart(part)
	local frameworkpart = creq(part..".init")
	frameworkpart.install()
end
local function install(...)
	local parts
	if ... then
		if type(...) == "table" then
			parts = ...
		else
			parts = {...}
		end
	else
		parts = _M.defaultparts or {"lua"}
	end

	for i, part in ipairs(parts) do
		installpart(part)
	end
end

_M.defaultparts = {"lua"}
_M.install = install
return _M
