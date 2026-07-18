local L_1_ = game:GetService("TweenService")
local L_2_ = game:GetService("UserInputService")
local L_3_ = {}
local L_4_ = {}
L_4_["Default"] = {
  NAMEOFTHEME = "Default",
  Color1 = Color3.fromRGB(178, 235, 230),
  Color2 = Color3.fromRGB(20, 92, 92),
  ["Color3"] = Color3.fromRGB(178, 235, 230),
  Accent = Color3.fromRGB(14, 68, 68),
  Accent2 = Color3.fromRGB(220, 255, 250),
  ToggleCircle = Color3.fromRGB(178, 235, 230),
  ToggleSwitch = Color3.fromRGB(14, 68, 68),
  ButtonContainer = Color3.fromRGB(20, 92, 92),
  ToggleContainer = Color3.fromRGB(20, 92, 92),
}
L_4_["Nice"] = {
  NAMEOFTHEME = "Nice",
  Color1 = Color3.fromRGB(178, 235, 230),
  Color2 = Color3.fromRGB(20, 92, 92),
  ["Color3"] = Color3.fromRGB(178, 235, 230),
  Accent = Color3.fromRGB(14, 68, 68),
  Accent2 = Color3.fromRGB(220, 255, 250),
  ToggleCircle = Color3.fromRGB(178, 235, 230),
  ToggleSwitch = Color3.fromRGB(14, 68, 68),
  ButtonContainer = Color3.fromRGB(20, 92, 92),
  ToggleContainer = Color3.fromRGB(20, 92, 92),
}
L_4_["Crimson"] = {
  NAMEOFTHEME = "Crimson",
  Color1 = Color3.fromRGB(255, 210, 210),
  Color2 = Color3.fromRGB(92, 20, 20),
  ["Color3"] = Color3.fromRGB(255, 210, 210),
  Accent = Color3.fromRGB(68, 14, 14),
  Accent2 = Color3.fromRGB(255, 235, 235),
  ToggleCircle = Color3.fromRGB(255, 210, 210),
  ToggleSwitch = Color3.fromRGB(68, 14, 14),
  ButtonContainer = Color3.fromRGB(92, 20, 20),
  ToggleContainer = Color3.fromRGB(92, 20, 20),
}
L_4_["Violet"] = {
  NAMEOFTHEME = "Violet",
  Color1 = Color3.fromRGB(220, 200, 255),
  Color2 = Color3.fromRGB(60, 20, 92),
  ["Color3"] = Color3.fromRGB(220, 200, 255),
  Accent = Color3.fromRGB(42, 14, 68),
  Accent2 = Color3.fromRGB(240, 225, 255),
  ToggleCircle = Color3.fromRGB(220, 200, 255),
  ToggleSwitch = Color3.fromRGB(42, 14, 68),
  ButtonContainer = Color3.fromRGB(60, 20, 92),
  ToggleContainer = Color3.fromRGB(60, 20, 92),
}
L_4_["Monochrome"] = {
  NAMEOFTHEME = "Monochrome",
  Color1 = Color3.fromRGB(220, 220, 220),
  Color2 = Color3.fromRGB(35, 35, 35),
  ["Color3"] = Color3.fromRGB(220, 220, 220),
  Accent = Color3.fromRGB(20, 20, 20),
  Accent2 = Color3.fromRGB(255, 255, 255),
  ToggleCircle = Color3.fromRGB(220, 220, 220),
  ToggleSwitch = Color3.fromRGB(20, 20, 20),
  ButtonContainer = Color3.fromRGB(35, 35, 35),
  ToggleContainer = Color3.fromRGB(35, 35, 35),
}
local L_5_ = {
  EnableXButton = true,
  EnableMiniButton = true,
  ClickSound = "rbxassetid://88442833509532",
  ToggleKeybind = Enum.KeyCode.RightControl,
}
local function L_6_func(L_7_arg0)
  local L_8_ = L_4_["Default"]
  if type(L_7_arg0) == "string" then
    return L_4_[L_7_arg0] or L_8_
  end
  if type(L_7_arg0) == "table" then
    local L_9_ = {}
    for L_10_forvar0, L_11_forvar1 in pairs(L_8_) do
      L_9_[L_10_forvar0] = L_11_forvar1
    end
    for L_12_forvar0, L_13_forvar1 in pairs(L_7_arg0) do
      L_9_[L_12_forvar0] = L_13_forvar1
    end
    return L_9_
  end
  return L_8_
end
function L_3_:AddTheme(L_14_arg0)
  L_14_arg0 = L_14_arg0 or {}
  local L_15_ = L_14_arg0.NAMEOFTHEME or "Unnamed"
  L_4_[L_15_] = L_14_arg0
  return L_15_
end
function L_3_:SetupConfig(L_16_arg0)
  L_16_arg0 = L_16_arg0 or {}
  for L_17_forvar0, L_18_forvar1 in pairs(L_16_arg0) do
    L_5_[L_17_forvar0] = L_18_forvar1
  end
end
function L_3_:AddWindow(L_19_arg0)
  L_19_arg0 = L_19_arg0 or {}
  local L_20_ = L_19_arg0.Title or "LOADER"
  local L_21_ = L_6_func(L_19_arg0.Theme)
  local L_22_ = {}
  L_22_["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
  L_22_["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
  L_22_["BGFRAME_2"] = Instance.new("Frame", L_22_["ScreenGui_1"])
  L_22_["BGFRAME_2"]["BorderSizePixel"] = 0
  L_22_["BGFRAME_2"]["BackgroundColor3"] = L_21_.Color2
  L_22_["BGFRAME_2"]["Size"] = UDim2.new(0, 454, 0, 294)
  L_22_["BGFRAME_2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
  L_22_["BGFRAME_2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
  L_22_["BGFRAME_2"]["Name"] = [[BGFRAME]]
  L_22_["BGFRAME_2"]["BackgroundTransparency"] = 0.1
  local L_23_ = Instance.new("UIScale", L_22_["BGFRAME_2"])
  L_23_.Scale = 0
  L_22_["PAGEHOLDER_3"] = Instance.new("Frame", L_22_["BGFRAME_2"])
  L_22_["PAGEHOLDER_3"]["BorderSizePixel"] = 0
  L_22_["PAGEHOLDER_3"]["BackgroundColor3"] = L_21_.Accent
  L_22_["PAGEHOLDER_3"]["Size"] = UDim2.new(0, 432, 0, 222)
  L_22_["PAGEHOLDER_3"]["Position"] = UDim2.new(0, 10, 0, 62)
  L_22_["PAGEHOLDER_3"]["Name"] = [[PAGEHOLDER]]
  L_22_["PAGEHOLDER_3"]["BackgroundTransparency"] = 0.4
  L_22_["PAGEHOLDER_3"]["ClipsDescendants"] = true
  Instance.new("UICorner", L_22_["PAGEHOLDER_3"])
  L_22_["PageScroll_5"] = Instance.new("ScrollingFrame", L_22_["PAGEHOLDER_3"])
  L_22_["PageScroll_5"]["ScrollingDirection"] = Enum.ScrollingDirection.Y
  L_22_["PageScroll_5"]["BorderSizePixel"] = 0
  L_22_["PageScroll_5"]["BackgroundColor3"] = L_21_["Color3"]
  L_22_["PageScroll_5"]["Name"] = [[PageScroll]]
  L_22_["PageScroll_5"]["Size"] = UDim2.new(0, 416, 0, 172)
  L_22_["PageScroll_5"]["Position"] = UDim2.new(0, 8, 0, 42)
  L_22_["PageScroll_5"]["ScrollBarThickness"] = 4
  L_22_["PageScroll_5"]["BackgroundTransparency"] = 1
  L_22_["PageScroll_5"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
  L_22_["PageScroll_5"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
  L_22_["PageScroll_5"]["ClipsDescendants"] = true
  Instance.new("UICorner", L_22_["PageScroll_5"])
  local L_24_ = Instance.new("UIListLayout", L_22_["PageScroll_5"])
  L_24_.SortOrder = Enum.SortOrder.LayoutOrder
  L_24_.Padding = UDim.new(0, 8)
  local L_25_ = Instance.new("UIPadding", L_22_["PageScroll_5"])
  L_25_.PaddingTop = UDim.new(0, 9)
  L_25_.PaddingLeft = UDim.new(0, 9)
  L_25_.PaddingRight = UDim.new(0, 9)
  L_25_.PaddingBottom = UDim.new(0, 9)
  L_22_["GAMELABEL_b"] = Instance.new("TextLabel", L_22_["PAGEHOLDER_3"])
  L_22_["GAMELABEL_b"]["Interactable"] = false
  L_22_["GAMELABEL_b"]["BorderSizePixel"] = 0
  L_22_["GAMELABEL_b"]["TextSize"] = 14
  L_22_["GAMELABEL_b"]["BackgroundColor3"] = L_21_["Color3"]
  L_22_["GAMELABEL_b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
  L_22_["GAMELABEL_b"]["TextColor3"] = L_21_["Color3"]
  L_22_["GAMELABEL_b"]["BackgroundTransparency"] = 1
  L_22_["GAMELABEL_b"]["Size"] = UDim2.new(0, 406, 0, 24)
  L_22_["GAMELABEL_b"]["Text"] = [[Game: ]]
  L_22_["GAMELABEL_b"]["Name"] = [[GAMELABEL]]
  L_22_["GAMELABEL_b"]["Position"] = UDim2.new(0, 12, 0, 12)
  L_22_["GAMELABEL_b"]["TextXAlignment"] = Enum.TextXAlignment.Left
  Instance.new("UICorner", L_22_["BGFRAME_2"])
  L_22_["RightArrow_d"] = Instance.new("ImageButton", L_22_["BGFRAME_2"])
  L_22_["RightArrow_d"]["BorderSizePixel"] = 0
  L_22_["RightArrow_d"]["BackgroundTransparency"] = 1
  L_22_["RightArrow_d"]["Image"] = [[rbxassetid://115929304045144]]
  L_22_["RightArrow_d"]["ImageColor3"] = L_21_["Color3"]
  L_22_["RightArrow_d"]["Size"] = UDim2.new(0, 32, 0, 32)
  L_22_["RightArrow_d"]["Name"] = [[RightArrow]]
  L_22_["RightArrow_d"]["Position"] = UDim2.new(0, 458, 0, 256)
  L_22_["PAGEINDICATORFRAME_e"] = Instance.new("Frame", L_22_["BGFRAME_2"])
  L_22_["PAGEINDICATORFRAME_e"]["BorderSizePixel"] = 0
  L_22_["PAGEINDICATORFRAME_e"]["BackgroundColor3"] = L_21_.Accent
  L_22_["PAGEINDICATORFRAME_e"]["Size"] = UDim2.new(0, 0, 0, 18)
  L_22_["PAGEINDICATORFRAME_e"]["AnchorPoint"] = Vector2.new(0.5, 0)
  L_22_["PAGEINDICATORFRAME_e"]["Position"] = UDim2.new(0.5, 0, 0, 298)
  L_22_["PAGEINDICATORFRAME_e"]["AutomaticSize"] = Enum.AutomaticSize.X
  L_22_["PAGEINDICATORFRAME_e"]["Name"] = [[PAGEINDICATORFRAME]]
  L_22_["PAGEINDICATORFRAME_e"]["BackgroundTransparency"] = 0.1
  local L_26_ = Instance.new("UIListLayout", L_22_["PAGEINDICATORFRAME_e"])
  L_26_.FillDirection = Enum.FillDirection.Horizontal
  L_26_.Padding = UDim.new(0, 6)
  L_26_.HorizontalAlignment = Enum.HorizontalAlignment.Center
  L_26_.VerticalAlignment = Enum.VerticalAlignment.Center
  L_26_.SortOrder = Enum.SortOrder.LayoutOrder
  local L_27_ = Instance.new("UIPadding", L_22_["PAGEINDICATORFRAME_e"])
  L_27_.PaddingLeft = UDim.new(0, 8)
  L_27_.PaddingRight = UDim.new(0, 8)
  Instance.new("UICorner", L_22_["PAGEINDICATORFRAME_e"])
  L_22_["TITLEBAR_12"] = Instance.new("Frame", L_22_["BGFRAME_2"])
  L_22_["TITLEBAR_12"]["BorderSizePixel"] = 0
  L_22_["TITLEBAR_12"]["BackgroundColor3"] = L_21_.Accent
  L_22_["TITLEBAR_12"]["Size"] = UDim2.new(0, 452, 0, 52)
  L_22_["TITLEBAR_12"]["Name"] = [[TITLEBAR]]
  L_22_["TITLEBAR_12"]["BackgroundTransparency"] = 0.5
  L_22_["TITLEBAR_12"]["Active"] = true
  L_22_["TextLabel_13"] = Instance.new("TextLabel", L_22_["TITLEBAR_12"])
  L_22_["TextLabel_13"]["BorderSizePixel"] = 0
  L_22_["TextLabel_13"]["TextSize"] = 24
  L_22_["TextLabel_13"]["BackgroundColor3"] = L_21_["Color3"]
  L_22_["TextLabel_13"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
  L_22_["TextLabel_13"]["TextColor3"] = L_21_["Color3"]
  L_22_["TextLabel_13"]["BackgroundTransparency"] = 1
  L_22_["TextLabel_13"]["Size"] = UDim2.new(0, 282, 0, 50)
  L_22_["TextLabel_13"]["Position"] = UDim2.new(0, 16, 0, 0)
  L_22_["TextLabel_13"]["TextXAlignment"] = Enum.TextXAlignment.Left
  L_22_["TextLabel_13"]["Text"] = L_20_
  Instance.new("UICorner", L_22_["TITLEBAR_12"])
  if L_5_.EnableXButton then
    L_22_["CloseButton_17"] = Instance.new("TextButton", L_22_["TITLEBAR_12"])
    L_22_["CloseButton_17"]["BorderSizePixel"] = 0
    L_22_["CloseButton_17"]["BackgroundColor3"] = L_21_.Color2
    L_22_["CloseButton_17"]["Size"] = UDim2.new(0, 28, 0, 28)
    L_22_["CloseButton_17"]["Position"] = UDim2.new(0, 410, 0, 12)
    L_22_["CloseButton_17"]["Text"] = [[X]]
    L_22_["CloseButton_17"]["TextSize"] = 14
    L_22_["CloseButton_17"]["TextColor3"] = L_21_["Color3"]
    L_22_["CloseButton_17"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    L_22_["CloseButton_17"]["AutoButtonColor"] = false
    Instance.new("UICorner", L_22_["CloseButton_17"]).CornerRadius = UDim.new(1, 0)
  end
  if L_5_.EnableMiniButton then
    local L_47_ = L_5_.EnableXButton and 372 or 410
    L_22_["MinimizeButton_18"] = Instance.new("TextButton", L_22_["TITLEBAR_12"])
    L_22_["MinimizeButton_18"]["BorderSizePixel"] = 0
    L_22_["MinimizeButton_18"]["BackgroundColor3"] = L_21_.Color2
    L_22_["MinimizeButton_18"]["Size"] = UDim2.new(0, 28, 0, 28)
    L_22_["MinimizeButton_18"]["Position"] = UDim2.new(0, L_47_, 0, 12)
    L_22_["MinimizeButton_18"]["Text"] = [[-]]
    L_22_["MinimizeButton_18"]["TextSize"] = 18
    L_22_["MinimizeButton_18"]["TextColor3"] = L_21_["Color3"]
    L_22_["MinimizeButton_18"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    L_22_["MinimizeButton_18"]["AutoButtonColor"] = false
    Instance.new("UICorner", L_22_["MinimizeButton_18"]).CornerRadius = UDim.new(1, 0)
  end
  L_22_["LEFTARROW_15"] = Instance.new("ImageButton", L_22_["BGFRAME_2"])
  L_22_["LEFTARROW_15"]["BorderSizePixel"] = 0
  L_22_["LEFTARROW_15"]["BackgroundTransparency"] = 1
  L_22_["LEFTARROW_15"]["Image"] = [[rbxassetid://83972042993874]]
  L_22_["LEFTARROW_15"]["ImageColor3"] = L_21_["Color3"]
  L_22_["LEFTARROW_15"]["TileSize"] = UDim2.new(0, 32, 0, 32)
  L_22_["LEFTARROW_15"]["Size"] = UDim2.new(0, 32, 0, 32)
  L_22_["LEFTARROW_15"]["Name"] = [[LEFTARROW]]
  L_22_["LEFTARROW_15"]["Position"] = UDim2.new(0, - 36, 0, 256)
  local L_28_ = Instance.new("UIGradient", L_22_["BGFRAME_2"])
  L_28_.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, L_21_.Color1),
    ColorSequenceKeypoint.new(1, L_21_.Color2)
  }
  local L_29_ = Instance.new("Sound", L_22_["BGFRAME_2"])
  L_29_.SoundId = L_5_.ClickSound
  L_29_.Volume = 0.6
  local function L_30_func()
    L_29_:Play()
  end
  local L_31_ = false
  local L_32_
  local L_33_
  local L_34_
  L_22_["TITLEBAR_12"].InputBegan:Connect(function(L_48_arg0)
    if L_48_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_48_arg0.UserInputType == Enum.UserInputType.Touch then
      L_31_ = true
      L_33_ = L_48_arg0.Position
      L_34_ = L_22_["BGFRAME_2"].Position
      L_48_arg0.Changed:Connect(function()
        if L_48_arg0.UserInputState == Enum.UserInputState.End then
          L_31_ = false
        end
      end)
    end
  end)
  L_22_["TITLEBAR_12"].InputChanged:Connect(function(L_49_arg0)
    if L_49_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_49_arg0.UserInputType == Enum.UserInputType.Touch then
      L_32_ = L_49_arg0
    end
  end)
  L_2_.InputChanged:Connect(function(L_50_arg0)
    if L_50_arg0 == L_32_ and L_31_ then
      local L_51_ = L_50_arg0.Position - L_33_
      L_22_["BGFRAME_2"].Position = UDim2.new(L_34_.X.Scale, L_34_.X.Offset + L_51_.X, L_34_.Y.Scale, L_34_.Y.Offset + L_51_.Y)
    end
  end)
  local function L_35_func(L_52_arg0, L_53_arg1)
    local L_54_ = Instance.new("Frame")
    L_54_.BackgroundColor3 = L_21_.Accent2
    L_54_.BackgroundTransparency = 0.35
    L_54_.BorderSizePixel = 0
    L_54_.AnchorPoint = Vector2.new(0.5, 0.5)
    L_54_.ZIndex = L_52_arg0.ZIndex + 1
    L_54_.Size = UDim2.new(0, 0, 0, 0)
    L_54_.Parent = L_52_arg0
    local L_55_ = L_53_arg1.X - L_52_arg0.AbsolutePosition.X
    local L_56_ = L_53_arg1.Y - L_52_arg0.AbsolutePosition.Y
    L_54_.Position = UDim2.new(0, L_55_, 0, L_56_)
    Instance.new("UICorner", L_54_).CornerRadius = UDim.new(1, 0)
    local L_57_ = Instance.new("UIStroke", L_54_)
    L_57_.Thickness = 2
    L_57_.Color = L_21_.Accent2
    L_57_.Transparency = 0.2
    local L_58_ = math.max(L_52_arg0.AbsoluteSize.X, L_52_arg0.AbsoluteSize.Y) * 2.4
    local L_59_ = L_1_:Create(L_54_, TweenInfo.new(0.65, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
      Size = UDim2.new(0, L_58_, 0, L_58_),
      BackgroundTransparency = 1
    })
    local L_60_ = L_1_:Create(L_57_, TweenInfo.new(0.65, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
      Transparency = 1
    })
    L_59_:Play()
    L_60_:Play()
    L_59_.Completed:Connect(function()
      L_54_:Destroy()
    end)
  end
  local L_36_ = {}
  local L_37_ = {}
  local L_38_ = {}
  local L_39_ = 1
  local L_40_ = false
  local L_41_ = false
  local L_42_ = L_22_["PageScroll_5"].Position
  local L_43_ = L_22_["PAGEHOLDER_3"].Size.X.Offset
  local L_44_ = L_22_["BGFRAME_2"].Size
  local function L_45_func(L_61_arg0, L_62_arg1)
    if L_40_ or L_61_arg0 == L_39_ or not L_37_[L_61_arg0] then
      return
    end
    L_40_ = true
    local L_63_ = L_37_[L_39_]
    local L_64_ = L_37_[L_61_arg0]
    local L_65_ = L_42_ + UDim2.new(0, - L_62_arg1 * L_43_, 0, 0)
    local L_66_ = L_42_ + UDim2.new(0, L_62_arg1 * L_43_, 0, 0)
    L_64_.Page.Position = L_66_
    L_64_.Page.Visible = true
    L_1_:Create(L_63_.Page, TweenInfo.new(0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
      Position = L_65_
    }):Play()
    local L_67_ = L_1_:Create(L_64_.Page, TweenInfo.new(0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
      Position = L_42_
    })
    L_67_:Play()
    L_1_:Create(L_63_.Indicator, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
      Size = UDim2.new(0, 10, 0, 10),
      BackgroundTransparency = 0.4
    }):Play()
    L_1_:Create(L_64_.Indicator, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
      Size = UDim2.new(0, 24, 0, 10),
      BackgroundTransparency = 0
    }):Play()
    L_22_["GAMELABEL_b"].Text = "Game: " .. L_64_.GameName
    L_67_.Completed:Connect(function()
      L_63_.Page.Visible = false
      L_63_.Page.Position = L_42_
      L_40_ = false
    end)
    L_39_ = L_61_arg0
  end
  function L_36_:SelectTab(L_68_arg0)
    local L_69_ = L_38_[L_68_arg0]
    if not L_69_ then
      return
    end
    for L_70_forvar0, L_71_forvar1 in ipairs(L_37_) do
      if L_71_forvar1 == L_69_ then
        local L_72_ = L_70_forvar0 > L_39_ and 1 or - 1
        L_45_func(L_70_forvar0, L_72_)
        return
      end
    end
  end
  L_22_["RightArrow_d"].MouseButton1Click:Connect(function()
    L_30_func()
    local L_73_ = L_39_ + 1
    if L_73_ > # L_37_ then
      L_73_ = 1
    end
    L_45_func(L_73_, 1)
  end)
  L_22_["LEFTARROW_15"].MouseButton1Click:Connect(function()
    L_30_func()
    local L_74_ = L_39_ - 1
    if L_74_ < 1 then
      L_74_ = # L_37_
    end
    L_45_func(L_74_, - 1)
  end)
  if L_5_.EnableMiniButton then
    L_22_["MinimizeButton_18"].MouseButton1Click:Connect(function()
      L_30_func()
      L_41_ = not L_41_
      if L_41_ then
        L_1_:Create(L_22_["BGFRAME_2"], TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
          Size = UDim2.new(0, L_44_.X.Offset, 0, 52)
        }):Play()
      else
        L_1_:Create(L_22_["BGFRAME_2"], TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
          Size = L_44_
        }):Play()
      end
      L_22_["PAGEHOLDER_3"].Visible = not L_41_
      L_22_["PAGEINDICATORFRAME_e"].Visible = not L_41_
      L_22_["RightArrow_d"].Visible = not L_41_
      L_22_["LEFTARROW_15"].Visible = not L_41_
    end)
  end
  local function L_46_func()
    local L_75_ = L_1_:Create(L_23_, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
      Scale = 0
    })
    L_75_:Play()
    L_75_.Completed:Connect(function()
      L_22_["ScreenGui_1"]:Destroy()
    end)
  end
  if L_5_.EnableXButton then
    L_22_["CloseButton_17"].MouseButton1Click:Connect(function()
      L_30_func()
      L_46_func()
    end)
  end
  L_2_.InputBegan:Connect(function(L_76_arg0, L_77_arg1)
    if L_77_arg1 then
      return
    end
    if L_76_arg0.KeyCode == L_5_.ToggleKeybind then
      L_22_["ScreenGui_1"].Enabled = not L_22_["ScreenGui_1"].Enabled
    end
  end)
  function L_36_:AddTab(L_78_arg0)
    L_78_arg0 = L_78_arg0 or {}
    local L_79_ = L_78_arg0.GameName or ""
    local L_80_ = L_78_arg0.ScrollTab
    if L_80_ == nil then
      L_80_ = true
    end
    local L_81_
    if # L_37_ == 0 then
      L_81_ = L_22_["PageScroll_5"]
    else
      L_81_ = L_22_["PageScroll_5"]:Clone()
      for L_85_forvar0, L_86_forvar1 in ipairs(L_81_:GetChildren()) do
        if L_86_forvar1:IsA("GuiObject") then
          L_86_forvar1:Destroy()
        end
      end
      L_81_.Parent = L_22_["PAGEHOLDER_3"]
    end
    L_81_.Visible = (# L_37_ == 0)
    L_81_.ScrollingEnabled = L_80_
    L_81_.Position = L_42_
    local L_82_ = Instance.new("Frame")
    L_82_.BorderSizePixel = 0
    L_82_.BackgroundColor3 = L_21_["Color3"]
    L_82_.Size = UDim2.new(0, 10, 0, 10)
    L_82_.BackgroundTransparency = 0.4
    L_82_.Name = [[PAGEINDICATOR]]
    Instance.new("UICorner", L_82_).CornerRadius = UDim.new(0, 12)
    L_82_.LayoutOrder = # L_37_ + 1
    L_82_.Parent = L_22_["PAGEINDICATORFRAME_e"]
    if # L_37_ == 0 then
      L_82_.Size = UDim2.new(0, 24, 0, 10)
      L_82_.BackgroundTransparency = 0
    end
    local L_83_ = {
      Page = L_81_,
      Indicator = L_82_,
      GameName = L_79_
    }
    table.insert(L_37_, L_83_)
    if # L_37_ == 1 then
      L_22_["GAMELABEL_b"].Text = "Game: " .. L_79_
      L_39_ = 1
    end
    local L_84_ = {}
    L_38_[L_84_] = L_83_
    function L_84_:AddButton(L_87_arg0)
      L_87_arg0 = L_87_arg0 or {}
      local L_88_ = L_87_arg0.Name or "Button"
      local L_89_ = L_87_arg0.Callback or function()
      end
      local L_90_ = Instance.new("TextButton")
      L_90_.BorderSizePixel = 0
      L_90_.TextSize = 14
      L_90_.TextColor3 = L_21_["Color3"]
      L_90_.BackgroundColor3 = L_21_.ButtonContainer
      L_90_.FontFace = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
      L_90_.Size = UDim2.new(1, 0, 0, 56)
      L_90_.Text = L_88_
      L_90_.ClipsDescendants = true
      L_90_.Parent = L_81_
      Instance.new("UICorner", L_90_)
      L_90_.InputBegan:Connect(function(L_91_arg0)
        if L_91_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_91_arg0.UserInputType == Enum.UserInputType.Touch then
          L_35_func(L_90_, L_91_arg0.Position)
        end
      end)
      L_90_.MouseButton1Click:Connect(function()
        L_30_func()
        L_89_()
      end)
      return L_90_
    end
    function L_84_:AddToggle(L_92_arg0)
      L_92_arg0 = L_92_arg0 or {}
      local L_93_ = L_92_arg0.Name or "Toggle"
      local L_94_ = L_92_arg0.Default or false
      local L_95_ = L_92_arg0.Callback or function()
      end
      local L_96_ = Instance.new("TextButton")
      L_96_.BorderSizePixel = 0
      L_96_.Size = UDim2.new(1, 0, 0, 44)
      L_96_.BackgroundColor3 = L_21_.ToggleContainer
      L_96_.Text = ""
      L_96_.AutoButtonColor = false
      L_96_.ClipsDescendants = true
      L_96_.Parent = L_81_
      Instance.new("UICorner", L_96_)
      local L_97_ = Instance.new("TextLabel", L_96_)
      L_97_.BackgroundTransparency = 1
      L_97_.Size = UDim2.new(1, - 72, 1, 0)
      L_97_.Position = UDim2.new(0, 14, 0, 0)
      L_97_.TextXAlignment = Enum.TextXAlignment.Left
      L_97_.Text = L_93_
      L_97_.TextColor3 = L_21_["Color3"]
      L_97_.TextSize = 14
      L_97_.FontFace = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
      local L_98_ = Instance.new("Frame", L_96_)
      L_98_.Size = UDim2.new(0, 44, 0, 22)
      L_98_.Position = UDim2.new(1, - 56, 0.5, - 11)
      L_98_.BackgroundColor3 = L_21_.ToggleSwitch
      Instance.new("UICorner", L_98_).CornerRadius = UDim.new(1, 0)
      local L_99_ = Instance.new("Frame", L_98_)
      L_99_.Size = UDim2.new(0, 18, 0, 18)
      L_99_.BackgroundColor3 = L_21_.ToggleCircle
      Instance.new("UICorner", L_99_).CornerRadius = UDim.new(1, 0)
      local L_100_ = L_94_
      local function L_101_func()
        local L_102_ = L_100_ and UDim2.new(1, - 20, 0.5, - 9) or UDim2.new(0, 2, 0.5, - 9)
        local L_103_ = L_100_ and L_21_.ToggleCircle or L_21_.ToggleSwitch
        L_1_:Create(L_99_, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
          Position = L_102_
        }):Play()
        L_1_:Create(L_98_, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
          BackgroundColor3 = L_103_
        }):Play()
      end
      L_99_.Position = L_100_ and UDim2.new(1, - 20, 0.5, - 9) or UDim2.new(0, 2, 0.5, - 9)
      L_98_.BackgroundColor3 = L_100_ and L_21_.ToggleCircle or L_21_.ToggleSwitch
      L_96_.InputBegan:Connect(function(L_104_arg0)
        if L_104_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_104_arg0.UserInputType == Enum.UserInputType.Touch then
          L_35_func(L_96_, L_104_arg0.Position)
        end
      end)
      L_96_.MouseButton1Click:Connect(function()
        L_30_func()
        L_100_ = not L_100_
        L_101_func()
        L_95_(L_100_)
      end)
      return L_96_
    end
    return L_84_
  end
  function L_36_:DLoader()
    L_46_func()
  end
  L_1_:Create(L_23_, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Scale = 1
  }):Play()
  return L_36_
end
return L_3_
