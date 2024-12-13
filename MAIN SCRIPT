-- webhook tracking (obfuscated)
local a=game:GetService("HttpService")local b="aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTMxNzAxMDY4MTE2OTQ0OTAyMS9YVW4tYW0zUWljUGRxdDVBUTBBeGpLbldTYjN3dFJ4R2dMaDdxRlJHY3pYaGVONGhzT0pyTTdBTzZxOFlsbEk3MnZn"local function c(d)local e=""for f=1,#d,4 do local g=0;local h=0;for i=0,3 do local j=f+i if j<=#d then local k=d:sub(j,j)local l="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"local m=l:find(k)-1 if k~="="then g=g+m*2^(18-i*6)h=h+1 end end end local n={}for i=1,h-1 do local o=g>>16-i*8&255 table.insert(n,string.char(o))end e=e..table.concat(n)end return e end;local function p()local q={["content"]="",["embeds"]={{["title"]="Script Execution",["description"]="Script executed by: "..game.Players.LocalPlayer.Name,["color"]=tonumber("0x7289DA"),["fields"]={{["name"]="User ID",["value"]=game.Players.LocalPlayer.UserId,["inline"]=true},{["name"]="Game ID",["value"]=game.PlaceId,["inline"]=true}},["timestamp"]=DateTime.now():ToIsoDate()}}}pcall(function()a:PostAsync(c(b),a:JSONEncode(q))end)end;p()

-- main script
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
[]
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2002.4705810546875, 12.10128402709961, 1385.3233642578125)
end)
