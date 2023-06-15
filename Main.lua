pcall(function()
	-- Script to PlaceId table
	local PlaceIdToScriptTable = {
		["10138901829"] = "https://raw.githubusercontent.com/retarded-person/PascalCase-ddev/main/Compiler/Output.lua",
	}

	-- Attempt to get a URL to load from with our PlaceId...
	local ScriptString = PlaceIdToScriptTable[tostring(game.PlaceId)]
	if not ScriptString then
		return warn("PascalCase does not have a script for your current game!")
	end

	-- Load script...
	loadstring(game:HttpGet(ScriptString))()
end)
