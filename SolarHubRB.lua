local whitelistecheck = loadstring(game:HttpGet("https://raw.githubusercontent.com/Baribok/MyfirstScript/main/DataBase.lua", true))()

if whitelistecheck[game:service('Players').LocalPlayer.UserId] then

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("SolaraHub", "RJTheme3")

local Tab = Window:NewTab("Games")
local Section = Tab:NewSection("Games")

Section:NewButton("HidenSeek Farm Coins", "SpeedInfo",function()
    for i,v in pairs(game:GetDescendants()) do
        if v.Name == 'Credit' then
        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
        end
end)


local Tab = Window:NewTab("Coordinats")
local Section = Tab:NewSection("Gui and tp")

Section:NewButton("GrabCoordinats gui", "free", function()


    local coordgui = Instance.new("ScreenGui")
    local main = Instance.new("Frame")
    local title = Instance.new("TextLabel")
    local credit = Instance.new("TextLabel")
    local grab = Instance.new("TextButton")
    local copy = Instance.new("TextButton")
    local cords = Instance.new("TextLabel")
    --Properties:
    coordgui.Name = "coordgui"
    coordgui.Parent = game.CoreGui
    
    main.Name = "main"
    main.Parent = coordgui
    main.BackgroundColor3 = Color3.new(1, 1, 1)
    main.Position = UDim2.new(0.352638364, 0, 0.405797124, 0)
    main.Size = UDim2.new(0, 228, 0, 142)
    main.Style = Enum.FrameStyle.DropShadow
    main.Active = true
    main.Draggable = true
    
    title.Name = "title"
    title.Parent = main
    title.BackgroundColor3 = Color3.new(0, 0, 0)
    title.Position = UDim2.new(-0.0517418832, 0, -0.054933358, 0)
    title.Size = UDim2.new(0, 235, 0, 19)
    title.Font = Enum.Font.SciFi
    title.Text = "Coordinates Grabber Gui"
    title.TextColor3 = Color3.new(1, 1, 1)
    title.TextSize = 14
    
    credit.Name = "credit"
    credit.Parent = main
    credit.BackgroundColor3 = Color3.new(0, 0, 0)
    credit.Position = UDim2.new(-0.0517418832, 0, 0.930982113, 0)
    credit.Size = UDim2.new(0, 235, 0, 19)
    credit.Font = Enum.Font.SciFi
    credit.Text = "Made by SolaraHub"
    credit.TextColor3 = Color3.new(1, 1, 1)
    credit.TextSize = 14
    
    grab.Name = "grab"
    grab.Parent = main
    grab.BackgroundColor3 = Color3.new(0, 0, 0)
    grab.Position = UDim2.new(0.0381504558, 0, 0.600263834, 0)
    grab.Size = UDim2.new(0, 128, 0, 31)
    grab.Font = Enum.Font.SciFi
    grab.Text = "Grab Coordinates"
    grab.TextColor3 = Color3.new(1, 1, 1)
    grab.TextSize = 14
    
    copy.Name = "copy"
    copy.Parent = main
    copy.BackgroundColor3 = Color3.new(0, 0, 0)
    copy.Position = UDim2.new(0.697107434, 0, 0.595215261, 0)
    copy.Size = UDim2.new(0, 52, 0, 32)
    copy.Font = Enum.Font.SciFi
    copy.Text = "Copy"
    copy.TextColor3 = Color3.new(1, 1, 1)
    copy.TextSize = 14
    
    cords.Name = "cords"
    cords.Parent = main
    cords.BackgroundColor3 = Color3.new(0, 0, 0)
    cords.Position = UDim2.new(0.0420129336, 0, 0.199266031, 0)
    cords.Size = UDim2.new(0, 194, 0, 37)
    cords.Font = Enum.Font.SciFi
    cords.Text = ""
    cords.TextColor3 = Color3.new(1, 1, 1)
    cords.TextSize = 14
    -- Scripts:
    game:GetService("UserInputService").InputBegan:connect(onKeyPress)
    
    grab.MouseButton1Down:Connect(function()
        cords.Text = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        wait(0.25)
        print(''..tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
    end)
    
    copy.MouseButton1Down:Connect(function()
        setclipboard(""..cords.Text)
     end)
end)

Section:NewButton("Copy", "TextboxInfo", function()

    setclipboard("text going to clipboard goes here")
toclipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(COORDINATESHERE)")
    
end)

local Tab = Window:NewTab("hubs")
local Section = Tab:NewSection("Hubs")

Section:NewButton("IY", "IY hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
Section:NewButton("Slap_Battles", "Slap_Battles", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
end)
Section:NewButton("SkyHub", "SkyHubInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()
end)
Section:NewButton("SynapseX", "Remake", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/main/Synapse-X-Remake.lua"))()
end)

Section:NewButton("RC7", "Remake", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CoreGui/Scripts/main/RC7"))()
end)

Section:NewButton("Dexv3", "On", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/neoon112/roblox-scripts/main/Dex-V3"))()
end)

Section:NewButton("TpGui", "TpGui", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/TP_Player.lua"))()
end)

Section:NewButton("Reset", "free", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0 
end)


local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Section Name")

Section:NewDropdown("Speed", "DropdownInf", {"16", "200", "500", "1000"}, function(currentOption)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (currentOption)
end)

Section:NewDropdown("Jump", "DropdownInf", {"50", "200", "500", "1000"}, function(currentOption)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (currentOption)
end)

Section:NewSlider("Speed", "SpeedInfo", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "JumpPowerInfo", 500, 50, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)


Section:NewButton("they will repeat 10 second (speed)", "speed = 200", function()
    for i = 1, 20 do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
    end
    wait(10)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

else
    game:service('Players').LocalPlayer:Kick('Not Whilelist!')
  end
