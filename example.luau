local Loader = loadstring(game:HttpGet('https://raw.githubusercontent.com/toxicity-561/Loader/refs/heads/main/source.luau'))()
--[[
Loader:AddTheme({
	NAMEOFTHEME = "Aqua",
	Color1 = Color3.fromRGB(178, 235, 230),
	Color2 = Color3.fromRGB(20, 92, 92),
	["Color3"] = Color3.fromRGB(178, 235, 230),
	Accent = Color3.fromRGB(14, 68, 68),
	Accent2 = Color3.fromRGB(220, 255, 250),
	ToggleCircle = Color3.fromRGB(178, 235, 230),
	ToggleSwitch = Color3.fromRGB(14, 68, 68),
	ButtonContainer = Color3.fromRGB(20, 92, 92),
	ToggleContainer = Color3.fromRGB(20, 92, 92),
})
]]
Loader:SetupConfig({
  EnableXButton = true, -- make sures that the button to close the UI will show
  EnableMiniButton= false, -- usually i dont recommend it but to minize the UI to the title bar (buggy)
  ClickSound = "rbxassetid://110178949778921" -- default sound you can remove it or just use a different sound
})
local Window = Loader:AddWindow({
  Title = "Test Loader",
  Theme = "Monochrome" -- more themes but theyll be in Themes.MD
})
local Tab = Window:AddTab({
  GameName = "Put in your game name in here",
  ScrollTab = true -- this is so if you have multiple components on one tab the scroll bar will be enabled and show all content
})
-- Window:SelectTab(Tab)
Tab:AddButton({
  Name = "Button",
  Callback = function()
    print'Button was clicked'
  end
})
Tab:AddToggle({
  Name = "Toggle",
  -- Default = false
  Callback = function(galue)
    print("Toggle is now ", galue) -- put galue cuz it was hard on mobile to select and change the g to a v
  end
})
Tab:AddButton({
  Name = "Destroy UI",
  Callback = function()
    Window:DLoader() -- custom thing to destroy the loader
  end
})
