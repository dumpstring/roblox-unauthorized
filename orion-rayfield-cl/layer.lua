local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local orion = {}
function orion:MakeWindow(params)
	local rayfieldWindow = Rayfield:CreateWindow({
		Name = params.Name or "Rayfield Example Window",
		Icon = params.IntroIcon or 0,
		LoadingTitle = params.IntroText or "Rayfield Interface Suite",
		LoadingSubtitle = "by Sirius",
		Theme = "Default",

		ConfigurationSaving = {
			Enabled = if params.SaveConfig ~= nil then params.SaveConfig else false,
			FolderName = params.ConfigFolder,
			FileName = params.ConfigFolder or params.Name,
		},

		KeySystem = false,
	})

	local mockwindow = {}

	function mockwindow:MakeTab(params)
		local tab = rayfieldWindow:CreateTab(params.Name, 0)

		local mocktab = {}

		function mocktab:AddSection(params)
			local section = tab:CreateSection(params.Name)

			return mocktab
		end

		function mocktab:AddButton(params)
			local button = tab:CreateButton({
				Name = params.Name,
				Callback = params.Callback,
			})
		end

		function mocktab:AddToggle(params)
			local toggle = tab:CreateToggle({
				Name = params.Name,
				CurrentValue = params.Default,
				Callback = params.Callback,
			})
			return toggle
		end

		function mocktab:AddColorpicker(params)
			local colorpicker = tab:CreateColorPicker({
				Name = params.Name,
				Color = params.Default,
				Callback = params.Callback,
			})
			return colorpicker
		end

		function mocktab:AddSlider(params)
			local slider = tab:CreateSlider({
				Name = params.Name,
				Range = { params.Min, params.Max },
				Increment = params.Increment,
				Suffix = params.ValueName,
				CurrentValue = params.Default,
				Callback = params.Callback,
			})
			return slider
		end

		function mocktab:AddLabel(params)
			local label = tab:CreateLabel(params, 4483362458, Color3.fromRGB(255, 255, 255), false)

			local mocklabel = {}

			function mocklabel:Set(str)
				label:Set(str, 4483362458, Color3.fromRGB(255, 255, 255), false)
			end

			return mocklabel
		end

		function mocktab:AddParagraph(name, content)
			local paragraph = tab:CreateParagraph({ Title = name, Content = content })

			local mockparagraph = {}

			function mockparagraph:Set(name, content)
				paragraph:Set({ Title = name, Content = content })
			end

			return mockparagraph
		end

		function mocktab:AddTextbox(params)
			local input = tab:CreateInput({
				Name = params.Name,
				PlaceholderText = "",
				NumbersOnly = false,
				OnEnter = true,
				RemoveTextAfterFocusLost = params.TextDisappear,
				Callback = params.Callback,
			})
		end

		function mocktab:AddBind(params)
			local keybind = tab:CreateKeybind({
				Name = params.Name,
				CurrentKeybind = params.Default.Name,
				HoldToInteract = params.Hold,
				Callback = function(kb)
					if kb then
						params.Callback()
					end
				end,
			})

			local mockkeybind = {}

			function mockkeybind:Set(kc)
				keybind:Set(kc.Name)
			end

			return mockkeybind
		end

		function mocktab:AddDropdown(params)
			local dropdown = tab:CreateDropdown({
				Name = params.Name,
				Options = params.Options,
				CurrentOption = params,
				MultiSelection = false,
				Callback = params.Callback,
			})
			return dropdown
		end

		return mocktab
	end

	return mockwindow
end

function orion:MakeNotification(params)
	Rayfield:Notify({
		Title = params.Name,
		Content = params.Content,
		Duration = params.Time,
		Image = params.Time,
	})
end

function orion:Init() end

return orion
