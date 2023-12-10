pcall(function()
	-- Script to PlaceId table
	local PlaceIdToScriptTable = {
		[10371908957] = "https://raw.githubusercontent.com/Blastbrean/PascalCase-ddev/main/Compiler/Output.lua",
	}

	-- Deepwoken PlaceIds...
	local DeepwokenPlaceIds = {
		12559711136,
		12522892314,
		12522889886,
		12522881268,
		11108929042,
		9854906953,
		9598091549,
		9528956055,
		8712356310,
		8668476218,
		6832944305,
		6832934465,
		6473861193,
		6032399813,
		5735553160,
		4111023553,
	}

	-- Add these to the script table, with our Deepwoken Script as the URL...
	for Index, PlaceId in next, DeepwokenPlaceIds do
		PlaceIdToScriptTable[PlaceId] =
			"https://raw.githubusercontent.com/Blastbrean/PascalCase-dw/main/Compiler/Output.lua"
	end

	-- Attempt to get a URL to load from with our PlaceId...
	local ScriptString = PlaceIdToScriptTable[game.PlaceId]
	if not ScriptString then
		return warn("PascalCase does not have a script for your current game!")
	end

	-- Load script...
	loadstring(game:HttpGet(ScriptString))()
end)
