local load = loadstring

getgenv().loadstring = function(...)
	local loading = ({ ... })[1]
	if
		loading == "https://raw.githubusercontent.com/shlexware/Orion/refs/heads/main/source"
		or loading
			== "https://raw.githubusercontent.com/darkkcontrol/Roblox-Orion-UI-Libary-OP-UI-LIBARY-/refs/heads/main/source"
	then
		return load(
			game:HttpGet(
				"https://raw.githubusercontent.com/dumpstring/roblox-unauthorized/refs/heads/main/orion-rayfield-cl/layer.lua"
			)
		)
	end

	return load(...)
end
