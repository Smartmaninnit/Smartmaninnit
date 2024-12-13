local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Fish It!", HidePremium = false, SaveConfig = true, ConfigFolder = "FishConfig"})

local MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998"})
local TpTab = Window:MakeTab({Name = "Teleports", Icon = "rbxassetid://4483345998"})
local CreditsTab = Window:MakeTab({Name = "Credits", Icon = "rbxassetid://4483345998"})

CreditsTab:AddLabel("Made by yoyoyoy")
CreditsTab:AddLabel("discord.gg/Gjr5vEes")

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
