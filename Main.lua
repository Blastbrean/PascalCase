local PlaceIdToScriptTable = {
	["142823291"] = "https://raw.githubusercontent.com/retarded-person/PascalCase-MM2/main/Compiler/Output.lua",
	["10138901829"] = "https://raw.githubusercontent.com/retarded-person/PascalCase-DDev/main/Compiler/Output.lua",
}

-- Attempt to get a URL to load from with our PlaceId...
local ScriptString = PlaceIdToScriptTable[game.PlaceId]
if not ScriptString then
	return warn("PascalCase does not have a script for your current game!")
end

-- Load script...
loadstring(game:HttpGet(ScriptString))()
