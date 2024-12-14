-- gui loader
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Fish It! | By Igcool",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "FishConfig",
    IntroEnabled = true,
    IntroText = "Fish It! Script",
    IntroIcon = "rbxassetid://4483345998",
    Icon = "rbxassetid://4483345998"
})

-- notification
OrionLib:MakeNotification({
    Name = "Script Loaded!",
    Content = "Join discord.gg/Gjr5vEes for more scripts!",
    Image = "rbxassetid://4483345998",
    Time = 5
})

-- tabs with icons
local CreditsTab = Window:MakeTab({Name = "Credits", Icon = "rbxassetid://4483345998"})
local MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998"})
local TpTab = Window:MakeTab({Name = "Teleports", Icon = "rbxassetid://4483345998"})
local MiscTab = Window:MakeTab({Name = "Misc", Icon = "rbxassetid://4483345998"})

-- sections
local MainSection = MainTab:AddSection({
    Name = "Auto Farms"
})

local TpSection = TpTab:AddSection({
    Name = "Locations"
})

local MiscSection = MiscTab:AddSection({
    Name = "Extra Features"
})

-- variables setup
getgenv().autoFarmEnabled = false
getgenv().coralFarmEnabled = false
getgenv().depthsFarmEnabled = false
getgenv().volcanoFarmEnabled = false
local platform = nil

-- disable key
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.T then
        getgenv().autoFarmEnabled = false
        getgenv().coralFarmEnabled = false
        getgenv().depthsFarmEnabled = false
        getgenv().volcanoFarmEnabled = false
        if platform then platform:Destroy() platform = nil end
        OrionLib:MakeNotification({
            Name = "Auto Farm Disabled",
            Content = "Press any autofarm button to enable again",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
    end
end)

-- autofarms
MainSection:AddToggle({
    Name = "Autofarm Kohana",
    Default = false,
    Callback = function(state)
        getgenv().autoFarmEnabled = state
        if state then
            OrionLib:MakeNotification({
                Name = "Kohana Farm",
                Content = "Started farming at Kohana",
                Image = "rbxassetid://4483345998",
                Time = 3
            })
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

MainSection:AddToggle({
    Name = "Autofarm Coral Reefs",
    Default = false,
    Callback = function(state)
        getgenv().coralFarmEnabled = state
        if state then
            OrionLib:MakeNotification({
                Name = "Coral Farm",
                Content = "Started farming at Coral Reefs",
                Image = "rbxassetid://4483345998",
                Time = 3
            })
            platform = Instance.new("Part")
            platform.Size = Vector3.new(5, 1, 5)
            platform.Anchored = true
            platform.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
            platform.Parent = workspace

            spawn(function()
                while getgenv().coralFarmEnabled do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3222.68994140625, 9.972307205200195, 1898.0626220703125)
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

MainSection:AddToggle({
    Name = "Autofarm Depths",
    Default = false,
    Callback = function(state)
        getgenv().depthsFarmEnabled = state
        if state then
            OrionLib:MakeNotification({
                Name = "Depths Farm",
                Content = "Started farming in The Depths",
                Image = "rbxassetid://4483345998",
                Time = 3
            })
            platform = Instance.new("Part")
            platform.Size = Vector3.new(5, 1, 5)
            platform.Anchored = true
            platform.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
            platform.Parent = workspace

            spawn(function()
                while getgenv().depthsFarmEnabled do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3239.964599609375, -1298.2198486328125, 1353.6944580078125)
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

-- Kohana Volcano Autofarm Toggle
MainSection:AddToggle({
    Name = "Kohana Volcano Autofarm",
    Default = false,
    Callback = function(state)
        getgenv().volcanoFarmEnabled = state
        if state then
            OrionLib:MakeNotification({
                Name = "Volcano Farm",
                Content = "Started farming at Kohana Volcano",
                Image = "rbxassetid://4483345998",
                Time = 3
            })

            platform = Instance.new("Part")
            platform.Size = Vector3.new(5, 1, 5)
            platform.Anchored = true
            platform.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
            platform.Parent = workspace

            spawn(function()
                while getgenv().volcanoFarmEnabled do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-597.8824462890625, 68.92965698242188, 117.68749237060547)
                    platform.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
                    mouse1click()
                    wait()
                end
            end)
        else
            if platform then 
                platform:Destroy() 
                platform = nil 
            end
        end
    end
})
