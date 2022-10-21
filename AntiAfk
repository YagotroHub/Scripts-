while not game:IsLoaded() do
    wait(0)
end

local CoreGui = typeof(gethui) == "function" and gethui() or game:GetService("CoreGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local CreditLabel = Instance.new("TextLabel")
CreditLabel.Parent = ScreenGui
CreditLabel.Active = true
CreditLabel.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
CreditLabel.Draggable = true
CreditLabel.Position = UDim2.new(0.698610067, 0, 0.098096624, 0)
CreditLabel.Size = UDim2.new(0, 370, 0, 52)
CreditLabel.Font = Enum.Font.SourceSansSemibold
CreditLabel.Text = "Anti Afk Script By Yagotro"
CreditLabel.TextColor3 = Color3.new(0, 1, 1)
CreditLabel.TextSize = 22

local Frame = Instance.new("Frame")
Frame.Parent = CreditLabel
Frame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Frame.Position = UDim2.new(0, 0, 1.0192306, 0)
Frame.Size = UDim2.new(0, 370, 0, 107)

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Parent = Frame
StatusLabel.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
StatusLabel.Position = UDim2.new(0, 0, 0.158377, 0)
StatusLabel.Size = UDim2.new(0, 370, 0, 44)
StatusLabel.Font = Enum.Font.ArialBold
StatusLabel.Text = "Status: Active"
StatusLabel.TextColor3 = Color3.new(0, 1, 1)
StatusLabel.TextSize = 20

local CreditLabelAlt = Instance.new("TextLabel")
CreditLabelAlt.Parent = Frame
CreditLabelAlt.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
CreditLabelAlt.Position = UDim2.new(0, 0, 0.800455689, 0)
CreditLabelAlt.Size = UDim2.new(0, 370, 0, 21)
CreditLabelAlt.Font = Enum.Font.Arial
CreditLabelAlt.Text = "Made by Yagotro"
CreditLabelAlt.TextColor3 = Color3.new(0, 1, 1)
CreditLabelAlt.TextSize = 20

local VirtualUser = game:GetService("VirtualUser")

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    StatusLabel.Text = "Status : Busy"
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.zero)
    StatusLabel.Text = "Status : Active"
end)