local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local GodModeEnabled = false

local gui = Instance.new("ScreenGui")
gui.Name = "GodModePanel"
gui.ResetOnSpawn = false
gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromScale(0.22, 0.16)
frame.Position = UDim2.fromScale(0.05, 0.65)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.fromScale(1, 0.35)
title.BackgroundTransparency = 1
title.Text = "HyperShot"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.TextScaled = true
title.Parent = frame

local status = Instance.new("TextLabel")
status.Size = UDim2.fromScale(1, 0.25)
status.Position = UDim2.fromScale(0, 0.35)
status.BackgroundTransparency = 1
status.Text = "God Mode : OFF"
status.TextColor3 = Color3.fromRGB(255, 80, 80)
status.TextScaled = true
status.Parent = frame

local toggle = Instance.new("TextButton")
toggle.Size = UDim2.fromScale(0.8, 0.28)
toggle.Position = UDim2.fromScale(0.1, 0.65)
toggle.Text = "Toggle"
toggle.TextScaled = true
toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
toggle.TextColor3 = Color3.fromRGB(255,255,255)
toggle.Parent = frame

local tCorner = Instance.new("UICorner")
tCorner.CornerRadius = UDim.new(0, 10)
tCorner.Parent = toggle

toggle.MouseButton1Click:Connect(function()
 GodModeEnabled = not GodModeEnabled

 if GodModeEnabled then
  status.Text = "God Mode : ON"
  status.TextColor3 = Color3.fromRGB(80, 255, 80)
 else
  status.Text = "God Mode : OFF"
  status.TextColor3 = Color3.fromRGB(255, 80, 80)
 end
end)

LocalPlayer.CharacterAdded:Connect(function()
 if GodModeEnabled then
 end
end)
