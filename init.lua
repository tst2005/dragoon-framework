--[[--------------------------------------------------------
	-- Framework - A library for Lua and LOVE --
	-- Copyright (c) 2014-2015 TsT worldmaster.fr --
--]]--------------------------------------------------------

--local _M, creq = require("newmodule")(...)
-- newmodule is not available at this step

local path = (... or ""):gsub("%.init$", "")
path = path ~= "" and path.."." or ""
require(path .. "lua.minimal.init")

local _M, creq, breq = require("newmodule")(...)

local function installpart(part)
	local frameworkpart = creq(part..".init")
	frameworkpart.install()
end
local function install(parts)
	for i, part in ipairs(parts or _M.defaultparts or {"lua"}) do
		installpart(part)
	end
end

_M.defaultparts = {"lua"}
_M.install = install
return _M
