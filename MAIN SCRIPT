local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Fish It!", "Ocean")
local MainTab = Window:NewTab("Main")
local TpTab = Window:NewTab("Teleports")
local FarmSection = MainTab:NewSection("Autofarm")
local InfoSection = MainTab:NewSection("Press T to turn off autofarm")
local TeleportSection = TpTab:NewSection("Locations")

getgenv().autoFarmEnabled = false
local platform = nil

game:GetService("UserInputService").InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.T then
if getgenv().autoFarmEnabled then
getgenv().autoFarmEnabled = false
if platform then
platform:Destroy()
platform = nil
end
end
end
end)

FarmSection:NewToggle("Autofarm Kohana", "Auto catches fish", function(state)
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
if platform then
platform:Destroy()
platform = nil
end
end
end)

TeleportSection:NewButton("Starter Island", "beginner area", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23.435884475708008, 4.625000953674316, 2868.347412109375)
end)

TeleportSection:NewButton("Kohana Island", "second area", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-842.8712158203125, 55.500057220458984, 146.21389770507812)
end)

TeleportSection:NewButton("Kohana Volcano", "volcano area", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-606.581787109375, 59.000057220458984, 105.82990264892578)
end)

TeleportSection:NewButton("Coral Reefs", "underwater area", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2853.76318359375, 47.499996185302734, 1988.1397705078125)
end)

TeleportSection:NewButton("The Depths", "deep sea area", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2002.4705810546875, 12.10128402709961, 1385.3233642578125)
end)
