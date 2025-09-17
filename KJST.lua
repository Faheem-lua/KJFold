local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local plr = Players.LocalPlayer
local playerGui = plr:WaitForChild("PlayerGui")

StarterGui:SetCore("SendNotification", {
    Title = "KJ Loaded",
    Text = "Made By Faheem | Downloading Some Assets..",
    Duration = 6
})

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KJGui"
screenGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 240, 0, 100)
mainFrame.Position = UDim2.new(0.4, 0, 0.4, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Selectable = true
mainFrame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

local button = Instance.new("TextButton")
button.Name = "StartButton"
button.Size = UDim2.new(0.8, 0, 0.5, 0)
button.Position = UDim2.new(0.1, 0, 0.25, 0)
button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
button.BorderSizePixel = 0
button.Text = "⟨Start⟩"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.GothamBold
button.TextSize = 16
button.Parent = mainFrame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10)
buttonCorner.Parent = button

-- Button click -> Execute script from GitHub
button.MouseButton1Click:Connect(function()
    StarterGui:SetCore("SendNotification", {
        Title = "Running System»",
        Text = "Kj Dropkick Has been Loaded..",
        Duration = 4
    })
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Faheem-lua/KJFold/refs/heads/main/KJDropkick.lua"))()
end)
