# Proton Loader (Public)

Made by t0x1c. A custom, fully themeable loader for Roblox script hubs. Built with smooth animations, a component system, and full customization support so you can drop it into your own project and make it your own.

---

## Features

- Draggable, centered window that spawns in the middle of the screen on any device
- Animated tab switching with directional slide transitions
- Ripple click effects on all interactive components
- Minimize and close controls
- Custom keybind to toggle UI visibility
- Full theme system with pre-made themes and support for custom ones
- Simple component API: buttons, toggles, and more

---

## Getting Started

Load the source with the following:

```lua
local Loader = loadstring(game:HttpGet('https://raw.githubusercontent.com/toxicity-561/Loader/refs/heads/main/source.luau'))()
```

This returns the `Loader` object, which is used to configure and build your window.

---

## Setup Config

Before creating a window, you can configure global loader behavior with `Loader:SetupConfig`.

```lua
Loader:SetupConfig({
	EnableXButton = true,
	EnableMiniButton = true,
	ClickSound = "rbxassetid://88442833509532",
})
```

| Option | Type | Description |
|---|---|---|
| `EnableXButton` | boolean | Shows a close button on the title bar |
| `EnableMiniButton` | boolean | Shows a minimize button on the title bar |
| `ClickSound` | string | Sound asset ID played on clicks and tab switches |

---

## Creating a Window

```lua
local Window = Loader:AddWindow({
	Title = "Proton Hub Loader",
	Theme = "Nice",
})
```

| Field | Type | Description |
|---|---|---|
| `Title` | string | The text shown on the title bar |
| `Theme` | string or table | Name of a registered theme, or a raw custom theme table |

See `Themes.md` for the full list of pre-made themes and how to build your own.

---

## Adding Tabs

```lua
local Tab = Window:AddTab({
	GameName = "Example Game",
	ScrollTab = true,
})
```

| Field | Type | Description |
|---|---|---|
| `GameName` | string | Displayed at the top of the window when this tab is active |
| `ScrollTab` | boolean | Enables scrolling if the tab has more content than fits |

---

## Selecting a Tab

Tabs can be switched programmatically using the object returned by `AddTab`.

```lua
Window:SelectTab(Tab)
```

This is useful for automatically opening a specific tab based on conditions, such as the current game's PlaceId.

```lua
if game.PlaceId == 000000000 then
	Window:SelectTab(Tab)
end
```

---

## Components

### Button

```lua
Tab:AddButton({
	Name = "Execute Script",
	Callback = function()
		print("Button was clicked")
	end
})
```

### Toggle

```lua
Tab:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(State)
		print("Toggle is now " .. tostring(State))
	end
})
```

---

## Closing the Loader

The loader can be destroyed programmatically, animating out before removal.

```lua
Window:DLoader()
```

---

## Notes

- `EnableMiniButton` is functional but may behave inconsistently in some cases. Use with awareness.
- All components are theme-aware and will automatically match the colors defined in the window's theme.
- Multiple independent windows can be created by calling `Loader:AddWindow` more than once.

---

## Documentation

- `Themes.md` — full list of pre-made themes, custom theme creation, and theme key reference
