local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Fish It!", HidePremium = false, SaveConfig = true, ConfigFolder = "FishConfig"})

local MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998"})
local TpTab = Window:MakeTab({Name = "Teleports", Icon = "rbxassetid://4483345998"})

getgenv().autoFarmEnabled = false
local platform = nil

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.T then
        getgenv().autoFarmEnabled = false
        if platform then platform:Destroy() platform = nil end
    end
end)

MainTab:AddToggle({
    Name = "Autofarm Kohana",
    Default = false,
    Callback = function(state)
        getgenv().autoFarmEnabled = state
        if state then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-759.0910034179688, 24.309707641601562, 429.12823486328125)
            platform = Instance.new("Part")
            platform.Size = Vector3.new(5, 1, 5)
            platform.Anchored = true
            platform.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
            platform.Parent = workspace
            
            spawn(function()
                while getgenv().autoFarmEnabled do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-759.0910034179688, 24.309707641601562, 429.12823486328125)
                    platform.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
                    mouse1click()
                    wait()
                end
            end)
        else
            if platform then platform:Destroy() platform = nil end
        end
    end
})

local locations = {
    ["Starter Island"] = CFrame.new(23.435884475708008, 4.625000953674316, 2868.347412109375),
    ["Kohana Island"] = CFrame.new(-842.8712158203125, 55.500057220458984, 146.21389770507812),
    ["Kohana Volcano"] = CFrame.new(-606.581787109375, 59.000057220458984, 105.82990264892578),
    ["Coral Reefs"] = CFrame.new(-2853.76318359375, 47.499996185302734, 1988.1397705078125),
    ["The Depths"] = CFrame.new(2002.4705810546875, 12.10128402709961, 1385.3233642578125)
}

for name, cf in pairs(locations) do
    TpTab:AddButton({
        Name = name,
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf
        end
    })
end

MainTab:AddLabel("Press T to disable autofarm")
-- old script contents from your github
local notification = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local credits = Instance.new("TextLabel")
local discordLink = Instance.new("TextLabel")

credits.Text = "Made by yoyoyoy"
credits.Size = UDim2.new(0, 150, 0, 20)
credits.Position = UDim2.new(0, 10, 0.85, 0)
credits.Parent = Main

discordLink.Text = "discord.gg/Gjr5vEes"
discordLink.Size = UDim2.new(0, 150, 0, 20)
discordLink.Position = UDim2.new(0, 10, 0.95, 0)
discordLink.Parent = Main

-- rest of your original script below
