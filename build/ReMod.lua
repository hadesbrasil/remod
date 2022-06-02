-- =================================================================
-- How to use?
-- =================================================================
-- 1. Create a new script and require what resources you want to use from remod, example:
-- local ReplicatedStorage = game:GetService("ReplicatedStorage")
-- local arr = require(ReplicatedStorage:WaitForChild("ReModule"):WaitForChild("arrays"))
-- local str = require(ReplicatedStorage:WaitForChild("ReModule"):WaitForChild("strings"))
-- local object = require(ReplicatedStorage:WaitForChild("ReModule"):WaitForChild("objects"))
--
-- 2. Use the resources you want, example:
-- print(arr.map({array}},
-- function(key, value)
--     if typeof(value) == "number" then -- se for um numero se não, não retorna nada
--         return value * 2
--     else
--         return value
--     end
-- end))
--
-- Or, if you want all resources require ReMod.
-- local ReplicatedStorage = game:GetService("ReplicatedStorage")
-- local ReMod = require(ReplicatedStorage:WaitForChild("ReModule"))
--
-- =================================================================
-- Created by SinceVoid & Caioband
-- =================================================================

local REMOD = {}

REMOD.arr = require(script.Parent:WaitForChild("arrays"))
REMOD.str = require(script.Parent:WaitForChild("strings"))
REMOD.obj = require(script.Parent:WaitForChild("objects"))

return REMOD
