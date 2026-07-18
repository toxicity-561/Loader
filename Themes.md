# Loader Themes

The loader ships with a set of ready-to-use themes, and also lets you build and register your own with `Loader:AddTheme`.

---

## Pre-Made Themes

Available out of the box:

- `Default`
- `Nice`
- `Crimson`
- `Violet`
- `Monochrome`

Use one by passing its name into `Theme` when creating a window:

```lua
local Window = Loader:AddWindow({
	Title = "My Loader",
	Theme = "Crimson"
})
```

---

## Custom Theme

Register your own theme once with `Loader:AddTheme`, then reference it by name anywhere:

```lua
Loader:AddTheme({
	NAMEOFTHEME = "MyTheme",
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

local Window = Loader:AddWindow({
	Title = "My Loader",
	Theme = "MyTheme"
})
```

You can also skip registering it entirely and pass a raw table straight into `Theme` for a one-off custom look:

```lua
local Window = Loader:AddWindow({
	Title = "My Loader",
	Theme = {
		Color1 = Color3.fromRGB(255, 200, 200),
		Color2 = Color3.fromRGB(90, 20, 20),
		["Color3"] = Color3.fromRGB(255, 200, 200),
		Accent = Color3.fromRGB(60, 14, 14),
		Accent2 = Color3.fromRGB(255, 235, 235),
		ToggleCircle = Color3.fromRGB(255, 200, 200),
		ToggleSwitch = Color3.fromRGB(60, 14, 14),
		ButtonContainer = Color3.fromRGB(90, 20, 20),
		ToggleContainer = Color3.fromRGB(90, 20, 20),
	}
})
```

---

## Theme Keys

| Key | Used For |
|---|---|
| `Color1` | Background gradient — start color |
| `Color2` | Background gradient — end color |
| `Color3` | Text, icons, and general accent color |
| `Accent` | Darker surface color (page holder, title bar, indicator frame) |
| `Accent2` | Ripple/click effect highlight color |
| `ToggleCircle` | Toggle switch knob color |
| `ToggleSwitch` | Toggle switch track color |
| `ButtonContainer` | Button background color |
| `ToggleContainer` | Toggle holder background color |

If a custom theme is missing any keys, they'll automatically fall back to the `Default` theme's values instead of breaking.
