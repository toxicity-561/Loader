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
local function L_6_func(L_9_arg0)
  local L_10_ = L_4_["Default"]
  if type(L_9_arg0) == "string" then
    return L_4_[L_9_arg0] or L_10_
  end
  if type(L_9_arg0) == "table" then
    local L_11_ = {}
    for L_12_forvar0, L_13_forvar1 in pairs(L_10_) do
      L_11_[L_12_forvar0] = L_13_forvar1
    end
    for L_14_forvar0, L_15_forvar1 in pairs(L_9_arg0) do
      L_11_[L_14_forvar0] = L_15_forvar1
    end
    return L_11_
  end
  return L_10_
end
function L_3_:AddTheme(L_16_arg0)
  L_16_arg0 = L_16_arg0 or {}
  local L_17_ = L_16_arg0.NAMEOFTHEME or "Unnamed"
  L_4_[L_17_] = L_16_arg0
  return L_17_
end
function L_3_:SetupConfig(L_18_arg0)
  L_18_arg0 = L_18_arg0 or {}
  for L_19_forvar0, L_20_forvar1 in pairs(L_18_arg0) do
    L_5_[L_19_forvar0] = L_20_forvar1
  end
end
function L_3_:AddWindow(L_21_arg0)
  L_21_arg0 = L_21_arg0 or {}
  local L_22_ = L_21_arg0.Title or "LOADER"
  local L_23_ = L_6_func(L_21_arg0.Theme)
  local L_24_ = {}
  L_24_["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
  L_24_["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
  L_24_["BGFRAME_2"] = Instance.new("Frame", L_24_["ScreenGui_1"])
  L_24_["BGFRAME_2"]["BorderSizePixel"] = 0
  L_24_["BGFRAME_2"]["BackgroundColor3"] = L_23_.Color2
  L_24_["BGFRAME_2"]["Size"] = UDim2.new(0, 454, 0, 294)
  L_24_["BGFRAME_2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
  L_24_["BGFRAME_2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
  L_24_["BGFRAME_2"]["Name"] = [[BGFRAME]]
  L_24_["BGFRAME_2"]["BackgroundTransparency"] = 0.1
  local L_25_ = Instance.new("UIScale", L_24_["BGFRAME_2"])
  L_25_.Scale = 0
  L_24_["PAGEHOLDER_3"] = Instance.new("Frame", L_24_["BGFRAME_2"])
  L_24_["PAGEHOLDER_3"]["BorderSizePixel"] = 0
  L_24_["PAGEHOLDER_3"]["BackgroundColor3"] = L_23_.Accent
  L_24_["PAGEHOLDER_3"]["Size"] = UDim2.new(0, 432, 0, 222)
  L_24_["PAGEHOLDER_3"]["Position"] = UDim2.new(0, 10, 0, 62)
  L_24_["PAGEHOLDER_3"]["Name"] = [[PAGEHOLDER]]
  L_24_["PAGEHOLDER_3"]["BackgroundTransparency"] = 0.4
  L_24_["PAGEHOLDER_3"]["ClipsDescendants"] = true
  Instance.new("UICorner", L_24_["PAGEHOLDER_3"])
  L_24_["PageScroll_5"] = Instance.new("ScrollingFrame", L_24_["PAGEHOLDER_3"])
  L_24_["PageScroll_5"]["ScrollingDirection"] = Enum.ScrollingDirection.Y
  L_24_["PageScroll_5"]["BorderSizePixel"] = 0
  L_24_["PageScroll_5"]["BackgroundColor3"] = L_23_["Color3"]
  L_24_["PageScroll_5"]["Name"] = [[PageScroll]]
  L_24_["PageScroll_5"]["Size"] = UDim2.new(0, 416, 0, 172)
  L_24_["PageScroll_5"]["Position"] = UDim2.new(0, 8, 0, 42)
  L_24_["PageScroll_5"]["ScrollBarThickness"] = 4
  L_24_["PageScroll_5"]["BackgroundTransparency"] = 1
  L_24_["PageScroll_5"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
  L_24_["PageScroll_5"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
  L_24_["PageScroll_5"]["ClipsDescendants"] = true
  Instance.new("UICorner", L_24_["PageScroll_5"])
  local L_26_ = Instance.new("UIListLayout", L_24_["PageScroll_5"])
  L_26_.SortOrder = Enum.SortOrder.LayoutOrder
  L_26_.Padding = UDim.new(0, 8)
  local L_27_ = Instance.new("UIPadding", L_24_["PageScroll_5"])
  L_27_.PaddingTop = UDim.new(0, 9)
  L_27_.PaddingLeft = UDim.new(0, 9)
  L_27_.PaddingRight = UDim.new(0, 9)
  L_27_.PaddingBottom = UDim.new(0, 9)
  L_24_["GAMELABEL_b"] = Instance.new("TextLabel", L_24_["PAGEHOLDER_3"])
  L_24_["GAMELABEL_b"]["Interactable"] = false
  L_24_["GAMELABEL_b"]["BorderSizePixel"] = 0
  L_24_["GAMELABEL_b"]["TextSize"] = 14
  L_24_["GAMELABEL_b"]["BackgroundColor3"] = L_23_["Color3"]
  L_24_["GAMELABEL_b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
  L_24_["GAMELABEL_b"]["TextColor3"] = L_23_["Color3"]
  L_24_["GAMELABEL_b"]["BackgroundTransparency"] = 1
  L_24_["GAMELABEL_b"]["Size"] = UDim2.new(0, 406, 0, 24)
  L_24_["GAMELABEL_b"]["Text"] = [[Game: ]]
  L_24_["GAMELABEL_b"]["Name"] = [[GAMELABEL]]
  L_24_["GAMELABEL_b"]["Position"] = UDim2.new(0, 12, 0, 12)
  L_24_["GAMELABEL_b"]["TextXAlignment"] = Enum.TextXAlignment.Left
  Instance.new("UICorner", L_24_["BGFRAME_2"])
  L_24_["RightArrow_d"] = Instance.new("ImageButton", L_24_["BGFRAME_2"])
  L_24_["RightArrow_d"]["BorderSizePixel"] = 0
  L_24_["RightArrow_d"]["BackgroundTransparency"] = 1
  L_24_["RightArrow_d"]["Image"] = [[rbxassetid://115929304045144]]
  L_24_["RightArrow_d"]["ImageColor3"] = L_23_["Color3"]
  L_24_["RightArrow_d"]["Size"] = UDim2.new(0, 32, 0, 32)
  L_24_["RightArrow_d"]["Name"] = [[RightArrow]]
  L_24_["RightArrow_d"]["Position"] = UDim2.new(0, 458, 0, 256)
  L_24_["PAGEINDICATORFRAME_e"] = Instance.new("Frame", L_24_["BGFRAME_2"])
  L_24_["PAGEINDICATORFRAME_e"]["BorderSizePixel"] = 0
  L_24_["PAGEINDICATORFRAME_e"]["BackgroundColor3"] = L_23_.Accent
  L_24_["PAGEINDICATORFRAME_e"]["Size"] = UDim2.new(0, 0, 0, 18)
  L_24_["PAGEINDICATORFRAME_e"]["AnchorPoint"] = Vector2.new(0.5, 0)
  L_24_["PAGEINDICATORFRAME_e"]["Position"] = UDim2.new(0.5, 0, 0, 298)
  L_24_["PAGEINDICATORFRAME_e"]["AutomaticSize"] = Enum.AutomaticSize.X
  L_24_["PAGEINDICATORFRAME_e"]["Name"] = [[PAGEINDICATORFRAME]]
  L_24_["PAGEINDICATORFRAME_e"]["BackgroundTransparency"] = 0.1
  local L_28_ = Instance.new("UIListLayout", L_24_["PAGEINDICATORFRAME_e"])
  L_28_.FillDirection = Enum.FillDirection.Horizontal
  L_28_.Padding = UDim.new(0, 6)
  L_28_.HorizontalAlignment = Enum.HorizontalAlignment.Center
  L_28_.VerticalAlignment = Enum.VerticalAlignment.Center
  L_28_.SortOrder = Enum.SortOrder.LayoutOrder
  local L_29_ = Instance.new("UIPadding", L_24_["PAGEINDICATORFRAME_e"])
  L_29_.PaddingLeft = UDim.new(0, 8)
  L_29_.PaddingRight = UDim.new(0, 8)
  Instance.new("UICorner", L_24_["PAGEINDICATORFRAME_e"])
  L_24_["TITLEBAR_12"] = Instance.new("Frame", L_24_["BGFRAME_2"])
  L_24_["TITLEBAR_12"]["BorderSizePixel"] = 0
  L_24_["TITLEBAR_12"]["BackgroundColor3"] = L_23_.Accent
  L_24_["TITLEBAR_12"]["Size"] = UDim2.new(0, 452, 0, 52)
  L_24_["TITLEBAR_12"]["Name"] = [[TITLEBAR]]
  L_24_["TITLEBAR_12"]["BackgroundTransparency"] = 0.5
  L_24_["TITLEBAR_12"]["Active"] = true
  L_24_["TextLabel_13"] = Instance.new("TextLabel", L_24_["TITLEBAR_12"])
  L_24_["TextLabel_13"]["BorderSizePixel"] = 0
  L_24_["TextLabel_13"]["TextSize"] = 24
  L_24_["TextLabel_13"]["BackgroundColor3"] = L_23_["Color3"]
  L_24_["TextLabel_13"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
  L_24_["TextLabel_13"]["TextColor3"] = L_23_["Color3"]
  L_24_["TextLabel_13"]["BackgroundTransparency"] = 1
  L_24_["TextLabel_13"]["Size"] = UDim2.new(0, 282, 0, 50)
  L_24_["TextLabel_13"]["Position"] = UDim2.new(0, 16, 0, 0)
  L_24_["TextLabel_13"]["TextXAlignment"] = Enum.TextXAlignment.Left
  L_24_["TextLabel_13"]["Text"] = L_22_
  Instance.new("UICorner", L_24_["TITLEBAR_12"])
  if L_5_.EnableXButton then
    L_24_["CloseButton_17"] = Instance.new("TextButton", L_24_["TITLEBAR_12"])
    L_24_["CloseButton_17"]["BorderSizePixel"] = 0
    L_24_["CloseButton_17"]["BackgroundColor3"] = L_23_.Color2
    L_24_["CloseButton_17"]["Size"] = UDim2.new(0, 28, 0, 28)
    L_24_["CloseButton_17"]["Position"] = UDim2.new(0, 410, 0, 12)
    L_24_["CloseButton_17"]["Text"] = [[X]]
    L_24_["CloseButton_17"]["TextSize"] = 14
    L_24_["CloseButton_17"]["TextColor3"] = L_23_["Color3"]
    L_24_["CloseButton_17"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    L_24_["CloseButton_17"]["AutoButtonColor"] = false
    Instance.new("UICorner", L_24_["CloseButton_17"]).CornerRadius = UDim.new(1, 0)
  end
  if L_5_.EnableMiniButton then
    local L_49_ = L_5_.EnableXButton and 372 or 410
    L_24_["MinimizeButton_18"] = Instance.new("TextButton", L_24_["TITLEBAR_12"])
    L_24_["MinimizeButton_18"]["BorderSizePixel"] = 0
    L_24_["MinimizeButton_18"]["BackgroundColor3"] = L_23_.Color2
    L_24_["MinimizeButton_18"]["Size"] = UDim2.new(0, 28, 0, 28)
    L_24_["MinimizeButton_18"]["Position"] = UDim2.new(0, L_49_, 0, 12)
    L_24_["MinimizeButton_18"]["Text"] = [[-]]
    L_24_["MinimizeButton_18"]["TextSize"] = 18
    L_24_["MinimizeButton_18"]["TextColor3"] = L_23_["Color3"]
    L_24_["MinimizeButton_18"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    L_24_["MinimizeButton_18"]["AutoButtonColor"] = false
    Instance.new("UICorner", L_24_["MinimizeButton_18"]).CornerRadius = UDim.new(1, 0)
  end
  L_24_["LEFTARROW_15"] = Instance.new("ImageButton", L_24_["BGFRAME_2"])
  L_24_["LEFTARROW_15"]["BorderSizePixel"] = 0
  L_24_["LEFTARROW_15"]["BackgroundTransparency"] = 1
  L_24_["LEFTARROW_15"]["Image"] = [[rbxassetid://83972042993874]]
  L_24_["LEFTARROW_15"]["ImageColor3"] = L_23_["Color3"]
  L_24_["LEFTARROW_15"]["TileSize"] = UDim2.new(0, 32, 0, 32)
  L_24_["LEFTARROW_15"]["Size"] = UDim2.new(0, 32, 0, 32)
  L_24_["LEFTARROW_15"]["Name"] = [[LEFTARROW]]
  L_24_["LEFTARROW_15"]["Position"] = UDim2.new(0, - 36, 0, 256)
  local L_30_ = Instance.new("UIGradient", L_24_["BGFRAME_2"])
  L_30_.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, L_23_.Color1),
    ColorSequenceKeypoint.new(1, L_23_.Color2)
  }
  local L_31_ = Instance.new("Sound", L_24_["BGFRAME_2"])
  L_31_.SoundId = L_5_.ClickSound
  L_31_.Volume = 0.6
  local function L_32_func()
    L_31_:Play()
  end
  local L_33_ = false
  local L_34_
  local L_35_
  local L_36_
  L_24_["TITLEBAR_12"].InputBegan:Connect(function(L_50_arg0)
    if L_50_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_50_arg0.UserInputType == Enum.UserInputType.Touch then
      L_33_ = true
      L_35_ = L_50_arg0.Position
      L_36_ = L_24_["BGFRAME_2"].Position
      L_50_arg0.Changed:Connect(function()
        if L_50_arg0.UserInputState == Enum.UserInputState.End then
          L_33_ = false
        end
      end)
    end
  end)
  L_24_["TITLEBAR_12"].InputChanged:Connect(function(L_51_arg0)
    if L_51_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_51_arg0.UserInputType == Enum.UserInputType.Touch then
      L_34_ = L_51_arg0
    end
  end)
  L_2_.InputChanged:Connect(function(L_52_arg0)
    if L_52_arg0 == L_34_ and L_33_ then
      local L_53_ = L_52_arg0.Position - L_35_
      L_24_["BGFRAME_2"].Position = UDim2.new(L_36_.X.Scale, L_36_.X.Offset + L_53_.X, L_36_.Y.Scale, L_36_.Y.Offset + L_53_.Y)
    end
  end)
  local function L_37_func(L_54_arg0, L_55_arg1)
    local L_56_ = Instance.new("Frame")
    L_56_.BackgroundColor3 = L_23_.Accent2
    L_56_.BackgroundTransparency = 0.35
    L_56_.BorderSizePixel = 0
    L_56_.AnchorPoint = Vector2.new(0.5, 0.5)
    L_56_.ZIndex = L_54_arg0.ZIndex + 1
    L_56_.Size = UDim2.new(0, 0, 0, 0)
    L_56_.Parent = L_54_arg0
    local L_57_ = L_55_arg1.X - L_54_arg0.AbsolutePosition.X
    local L_58_ = L_55_arg1.Y - L_54_arg0.AbsolutePosition.Y
    L_56_.Position = UDim2.new(0, L_57_, 0, L_58_)
    Instance.new("UICorner", L_56_).CornerRadius = UDim.new(1, 0)
    local L_59_ = Instance.new("UIStroke", L_56_)
    L_59_.Thickness = 2
    L_59_.Color = L_23_.Accent2
    L_59_.Transparency = 0.2
    local L_60_ = math.max(L_54_arg0.AbsoluteSize.X, L_54_arg0.AbsoluteSize.Y) * 2.4
    local L_61_ = L_1_:Create(L_56_, TweenInfo.new(0.65, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
      Size = UDim2.new(0, L_60_, 0, L_60_),
      BackgroundTransparency = 1
    })
    local L_62_ = L_1_:Create(L_59_, TweenInfo.new(0.65, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
      Transparency = 1
    })
    L_61_:Play()
    L_62_:Play()
    L_61_.Completed:Connect(function()
      L_56_:Destroy()
    end)
  end
  local L_38_ = {}
  local L_39_ = {}
  local L_40_ = {}
  local L_41_ = 1
  local L_42_ = false
  local L_43_ = false
  local L_44_ = L_24_["PageScroll_5"].Position
  local L_45_ = L_24_["PAGEHOLDER_3"].Size.X.Offset
  local L_46_ = L_24_["BGFRAME_2"].Size
  local function L_47_func(L_63_arg0, L_64_arg1)
    if L_42_ or L_63_arg0 == L_41_ or not L_39_[L_63_arg0] then
      return
    end
    L_42_ = true
    local L_65_ = L_39_[L_41_]
    local L_66_ = L_39_[L_63_arg0]
    local L_67_ = L_44_ + UDim2.new(0, - L_64_arg1 * L_45_, 0, 0)
    local L_68_ = L_44_ + UDim2.new(0, L_64_arg1 * L_45_, 0, 0)
    L_66_.Page.Position = L_68_
    L_66_.Page.Visible = true
    L_1_:Create(L_65_.Page, TweenInfo.new(0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
      Position = L_67_
    }):Play()
    local L_69_ = L_1_:Create(L_66_.Page, TweenInfo.new(0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
      Position = L_44_
    })
    L_69_:Play()
    L_1_:Create(L_65_.Indicator, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
      Size = UDim2.new(0, 10, 0, 10),
      BackgroundTransparency = 0.4
    }):Play()
    L_1_:Create(L_66_.Indicator, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
      Size = UDim2.new(0, 24, 0, 10),
      BackgroundTransparency = 0
    }):Play()
    L_24_["GAMELABEL_b"].Text = "Game: " .. L_66_.GameName
    L_69_.Completed:Connect(function()
      L_65_.Page.Visible = false
      L_65_.Page.Position = L_44_
      L_42_ = false
    end)
    L_41_ = L_63_arg0
  end
  function L_38_:SelectTab(L_70_arg0)
    local L_71_ = L_40_[L_70_arg0]
    if not L_71_ then
      return
    end
    for L_72_forvar0, L_73_forvar1 in ipairs(L_39_) do
      if L_73_forvar1 == L_71_ then
        local L_74_ = L_72_forvar0 > L_41_ and 1 or - 1
        L_47_func(L_72_forvar0, L_74_)
        return
      end
    end
  end
  L_24_["RightArrow_d"].MouseButton1Click:Connect(function()
    L_32_func()
    local L_75_ = L_41_ + 1
    if L_75_ > # L_39_ then
      L_75_ = 1
    end
    L_47_func(L_75_, 1)
  end)
  L_24_["LEFTARROW_15"].MouseButton1Click:Connect(function()
    L_32_func()
    local L_76_ = L_41_ - 1
    if L_76_ < 1 then
      L_76_ = # L_39_
    end
    L_47_func(L_76_, - 1)
  end)
  if L_5_.EnableMiniButton then
    L_24_["MinimizeButton_18"].MouseButton1Click:Connect(function()
      L_32_func()
      L_43_ = not L_43_
      if L_43_ then
        L_1_:Create(L_24_["BGFRAME_2"], TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
          Size = UDim2.new(0, L_46_.X.Offset, 0, 52)
        }):Play()
      else
        L_1_:Create(L_24_["BGFRAME_2"], TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
          Size = L_46_
        }):Play()
      end
      L_24_["PAGEHOLDER_3"].Visible = not L_43_
      L_24_["PAGEINDICATORFRAME_e"].Visible = not L_43_
      L_24_["RightArrow_d"].Visible = not L_43_
      L_24_["LEFTARROW_15"].Visible = not L_43_
    end)
  end
  local function L_48_func()
    local L_77_ = L_1_:Create(L_25_, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
      Scale = 0
    })
    L_77_:Play()
    L_77_.Completed:Connect(function()
      L_24_["ScreenGui_1"]:Destroy()
    end)
  end
  if L_5_.EnableXButton then
    L_24_["CloseButton_17"].MouseButton1Click:Connect(function()
      L_32_func()
      L_48_func()
    end)
  end
  L_2_.InputBegan:Connect(function(L_78_arg0, L_79_arg1)
    if L_79_arg1 then
      return
    end
    if L_78_arg0.KeyCode == L_5_.ToggleKeybind then
      L_24_["ScreenGui_1"].Enabled = not L_24_["ScreenGui_1"].Enabled
    end
  end)
  function L_38_:AddTab(L_80_arg0)
    L_80_arg0 = L_80_arg0 or {}
    local L_81_ = L_80_arg0.GameName or ""
    local L_82_ = L_80_arg0.ScrollTab
    if L_82_ == nil then
      L_82_ = true
    end
    local L_83_
    if # L_39_ == 0 then
      L_83_ = L_24_["PageScroll_5"]
    else
      L_83_ = L_24_["PageScroll_5"]:Clone()
      for L_87_forvar0, L_88_forvar1 in ipairs(L_83_:GetChildren()) do
        if L_88_forvar1:IsA("GuiObject") then
          L_88_forvar1:Destroy()
        end
      end
      L_83_.Parent = L_24_["PAGEHOLDER_3"]
    end
    L_83_.Visible = (# L_39_ == 0)
    L_83_.ScrollingEnabled = L_82_
    L_83_.Position = L_44_
    local L_84_ = Instance.new("Frame")
    L_84_.BorderSizePixel = 0
    L_84_.BackgroundColor3 = L_23_["Color3"]
    L_84_.Size = UDim2.new(0, 10, 0, 10)
    L_84_.BackgroundTransparency = 0.4
    L_84_.Name = [[PAGEINDICATOR]]
    Instance.new("UICorner", L_84_).CornerRadius = UDim.new(0, 12)
    L_84_.LayoutOrder = # L_39_ + 1
    L_84_.Parent = L_24_["PAGEINDICATORFRAME_e"]
    if # L_39_ == 0 then
      L_84_.Size = UDim2.new(0, 24, 0, 10)
      L_84_.BackgroundTransparency = 0
    end
    local L_85_ = {
      Page = L_83_,
      Indicator = L_84_,
      GameName = L_81_
    }
    table.insert(L_39_, L_85_)
    if # L_39_ == 1 then
      L_24_["GAMELABEL_b"].Text = "Game: " .. L_81_
      L_41_ = 1
    end
    local L_86_ = {}
    L_40_[L_86_] = L_85_
    function L_86_:AddButton(L_89_arg0)
      L_89_arg0 = L_89_arg0 or {}
      local L_90_ = L_89_arg0.Name or "Button"
      local L_91_ = L_89_arg0.Callback or function()
      end
      local L_92_ = Instance.new("TextButton")
      L_92_.BorderSizePixel = 0
      L_92_.TextSize = 14
      L_92_.TextColor3 = L_23_["Color3"]
      L_92_.BackgroundColor3 = L_23_.ButtonContainer
      L_92_.FontFace = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
      L_92_.Size = UDim2.new(1, 0, 0, 56)
      L_92_.Text = L_90_
      L_92_.ClipsDescendants = true
      L_92_.Parent = L_83_
      Instance.new("UICorner", L_92_)
      L_92_.InputBegan:Connect(function(L_93_arg0)
        if L_93_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_93_arg0.UserInputType == Enum.UserInputType.Touch then
          L_37_func(L_92_, L_93_arg0.Position)
        end
      end)
      L_92_.MouseButton1Click:Connect(function()
        L_32_func()
        L_91_()
      end)
      return L_92_
    end
    function L_86_:AddToggle(L_94_arg0)
      L_94_arg0 = L_94_arg0 or {}
      local L_95_ = L_94_arg0.Name or "Toggle"
      local L_96_ = L_94_arg0.Default or false
      local L_97_ = L_94_arg0.Callback or function()
      end
      local L_98_ = Instance.new("TextButton")
      L_98_.BorderSizePixel = 0
      L_98_.Size = UDim2.new(1, 0, 0, 44)
      L_98_.BackgroundColor3 = L_23_.ToggleContainer
      L_98_.Text = ""
      L_98_.AutoButtonColor = false
      L_98_.ClipsDescendants = true
      L_98_.Parent = L_83_
      Instance.new("UICorner", L_98_)
      local L_99_ = Instance.new("TextLabel", L_98_)
      L_99_.BackgroundTransparency = 1
      L_99_.Size = UDim2.new(1, - 72, 1, 0)
      L_99_.Position = UDim2.new(0, 14, 0, 0)
      L_99_.TextXAlignment = Enum.TextXAlignment.Left
      L_99_.Text = L_95_
      L_99_.TextColor3 = L_23_["Color3"]
      L_99_.TextSize = 14
      L_99_.FontFace = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
      local L_100_ = Instance.new("Frame", L_98_)
      L_100_.Size = UDim2.new(0, 44, 0, 22)
      L_100_.Position = UDim2.new(1, - 56, 0.5, - 11)
      L_100_.BackgroundColor3 = L_23_.ToggleSwitch
      Instance.new("UICorner", L_100_).CornerRadius = UDim.new(1, 0)
      local L_101_ = Instance.new("Frame", L_100_)
      L_101_.Size = UDim2.new(0, 18, 0, 18)
      L_101_.BackgroundColor3 = L_23_.ToggleCircle
      Instance.new("UICorner", L_101_).CornerRadius = UDim.new(1, 0)
      local L_102_ = L_96_
      local function L_103_func()
        local L_104_ = L_102_ and UDim2.new(1, - 20, 0.5, - 9) or UDim2.new(0, 2, 0.5, - 9)
        local L_105_ = L_102_ and L_23_.ToggleCircle or L_23_.ToggleSwitch
        L_1_:Create(L_101_, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
          Position = L_104_
        }):Play()
        L_1_:Create(L_100_, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
          BackgroundColor3 = L_105_
        }):Play()
      end
      L_101_.Position = L_102_ and UDim2.new(1, - 20, 0.5, - 9) or UDim2.new(0, 2, 0.5, - 9)
      L_100_.BackgroundColor3 = L_102_ and L_23_.ToggleCircle or L_23_.ToggleSwitch
      L_98_.InputBegan:Connect(function(L_106_arg0)
        if L_106_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_106_arg0.UserInputType == Enum.UserInputType.Touch then
          L_37_func(L_98_, L_106_arg0.Position)
        end
      end)
      L_98_.MouseButton1Click:Connect(function()
        L_32_func()
        L_102_ = not L_102_
        L_103_func()
        L_97_(L_102_)
      end)
      return L_98_
    end
    return L_86_
  end
  function L_38_:DLoader()
    L_48_func()
  end
  L_1_:Create(L_25_, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Scale = 1
  }):Play()
  return L_38_
end
L_3_:AddTheme({
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
L_3_:SetupConfig({
  EnableXButton = true,
  EnableMiniButton = false,
  ClickSound = "rbxassetid://110178949778921",
})
local L_7_ = L_3_:AddWindow({
  Title = "PROTON HUB LOADER",
  Theme = "Monochrome",
})
local L_8_ = L_7_:AddTab({
  GameName = "Muscle Legends",
  ScrollTab = false
})
L_8_:AddButton({
  Name = "EXECUTE MAIN SCRIPT",
  Callback = function()
  end
})
L_7_:SelectTab(L_8_)
