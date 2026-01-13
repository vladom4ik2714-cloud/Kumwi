local KeySystem = {}

local function LoadValidKeys()
    local success, keys = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/yourusername/yourrepo/main/keys.txt")
    end)
    
    if success then
        local keyList = {}
        for key in keys:gmatch("[^\r\n]+") do
            table.insert(keyList, key)
        end
        return keyList
    else
        return {
            "KUMWI2024",
            "PREMIUM123", 
            "SKIBIDI456",
            "TOILET789",
            "BATTLEFRONT2025",
            "WINDUI999",
            "KUMWI-PREMIUM",
            "SKIBIDI-ELITE",
            "BATTLEFRONT-VIP",
            "TOILET-MASTER",
            "WINDUI-PRO",
            "KUMWI-ULTIMATE",
            "PREMIUM-ACCESS",
            "VIP-MEMBER",
            "ELITE-USER",
            "MASTER-KEY",
            "ULTIMATE-PASS",
            "GOLDEN-KEY",
            "DIAMOND-ACCESS",
            "PLATINUM-VIP"
        }
    end
end

KeySystem.ValidKeys = LoadValidKeys()

local function LoadWhitelist()
    local success, whitelist = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/yourusername/yourrepo/main/whitelist.txt")
    end)
    
    if success then
        local users = {}
        for user in whitelist:gmatch("[^\r\n]+") do
            table.insert(users, user)
        end
        return users
    else
        return {
            "username1",
            "username2", 
            "kumkki"
        }
    end
end

KeySystem.Whitelist = LoadWhitelist()

local function GetHWID()
    local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
    return hwid
end

local function IsWhitelisted()
    local playerName = game.Players.LocalPlayer.Name
    for _, name in pairs(KeySystem.Whitelist) do
        if playerName == name then
            return true
        end
    end
    return false
end

local function CreateKeyGUI()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local KeyBox = Instance.new("TextBox")
    local SubmitButton = Instance.new("TextButton")
    local CloseButton = Instance.new("TextButton")
    local StatusLabel = Instance.new("TextLabel")
    local LinkButton = Instance.new("TextButton")
    
    ScreenGui.Name = "KeySystemGUI"
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.5, -200, 0.5, -175)
    Frame.Size = UDim2.new(0, 400, 0, 350)
    Frame.Active = true
    Frame.Draggable = true
    
    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 10)
    Corner.Parent = Frame
    
    Title.Parent = Frame
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0, 0, 0, 10)
    Title.Size = UDim2.new(1, 0, 0, 50)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "🚀 Kumwi Hub - Key System"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 18
    
    KeyBox.Parent = Frame
    KeyBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    KeyBox.BorderSizePixel = 0
    KeyBox.Position = UDim2.new(0.1, 0, 0.25, 0)
    KeyBox.Size = UDim2.new(0.8, 0, 0, 40)
    KeyBox.Font = Enum.Font.Gotham
    KeyBox.PlaceholderText = "Enter your key here..."
    KeyBox.Text = ""
    KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    KeyBox.TextSize = 14
    
    local KeyCorner = Instance.new("UICorner")
    KeyCorner.CornerRadius = UDim.new(0, 5)
    KeyCorner.Parent = KeyBox
    
    LinkButton.Parent = Frame
    LinkButton.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
    LinkButton.BorderSizePixel = 0
    LinkButton.Position = UDim2.new(0.1, 0, 0.45, 0)
    LinkButton.Size = UDim2.new(0.8, 0, 0, 40)
    LinkButton.Font = Enum.Font.GothamBold
    LinkButton.Text = "🔗 Get Key (Linkvertise)"
    LinkButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    LinkButton.TextSize = 14
    
    local LinkCorner = Instance.new("UICorner")
    LinkCorner.CornerRadius = UDim.new(0, 5)
    LinkCorner.Parent = LinkButton
    
    SubmitButton.Parent = Frame
    SubmitButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
    SubmitButton.BorderSizePixel = 0
    SubmitButton.Position = UDim2.new(0.1, 0, 0.62, 0)
    SubmitButton.Size = UDim2.new(0.35, 0, 0, 40)
    SubmitButton.Font = Enum.Font.GothamBold
    SubmitButton.Text = "Submit Key"
    SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    SubmitButton.TextSize = 14
    
    local SubmitCorner = Instance.new("UICorner")
    SubmitCorner.CornerRadius = UDim.new(0, 5)
    SubmitCorner.Parent = SubmitButton
    
    CloseButton.Parent = Frame
    CloseButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
    CloseButton.BorderSizePixel = 0
    CloseButton.Position = UDim2.new(0.55, 0, 0.62, 0)
    CloseButton.Size = UDim2.new(0.35, 0, 0, 40)
    CloseButton.Font = Enum.Font.GothamBold
    CloseButton.Text = "Close"
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.TextSize = 14
    
    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 5)
    CloseCorner.Parent = CloseButton
    
    StatusLabel.Parent = Frame
    StatusLabel.BackgroundTransparency = 1
    StatusLabel.Position = UDim2.new(0, 0, 0.78, 0)
    StatusLabel.Size = UDim2.new(1, 0, 0, 60)
    StatusLabel.Font = Enum.Font.Gotham
    StatusLabel.Text = "Click 'Get Key' to get your access key\nHWID: " .. GetHWID()
    StatusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    StatusLabel.TextSize = 12
    StatusLabel.TextWrapped = true
    
    return ScreenGui, KeyBox, SubmitButton, CloseButton, StatusLabel, LinkButton
end

local function CheckKey()
    if IsWhitelisted() then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "✅ Whitelist Access";
            Text = "Welcome " .. game.Players.LocalPlayer.Name .. "!";
            Duration = 3;
        })
        return true
    end
    
    local gui, keyBox, submitBtn, closeBtn, statusLabel, linkBtn = CreateKeyGUI()
    local keyValid = false
    
    linkBtn.MouseButton1Click:Connect(function()
        setclipboard("https://linkvertise.com/2986668/QMSxaicIKGYj?o=sharing")
        statusLabel.Text = "✅ Link copied to clipboard!\nPaste in browser to get key"
        statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    end)
    
    submitBtn.MouseButton1Click:Connect(function()
        local inputKey = keyBox.Text
        local validKey = false
        
        for _, key in pairs(KeySystem.ValidKeys) do
            if inputKey == key then
                validKey = true
                break
            end
        end
        
        if validKey then
            statusLabel.Text = "✅ Valid key! Loading script..."
            statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
            
            wait(2)
            gui:Destroy()
            keyValid = true
        else
            statusLabel.Text = "❌ Invalid key! Get key from linkvertise."
            statusLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            keyBox.Text = ""
        end
    end)
    
    closeBtn.MouseButton1Click:Connect(function()
        gui:Destroy()
        game.Players.LocalPlayer:Kick("Key system closed")
    end)
    
    repeat wait(0.1) until keyValid or not gui.Parent
    
    return keyValid
end

if not CheckKey() then
    return
end

local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer

local Window = WindUI:CreateWindow({
    Title = "Kumwi Hub",
    Folder = "SkibidiHub",
    Icon = "sword",
    ToggleKey = Enum.KeyCode.K,
    Topbar = {
        Height = 44,
        ButtonsType = "Mac",
    },
})

local MainTab = Window:Tab({
    Title = "Main",
    Icon = "solar:home-2-bold",
})

local PlayerTab = Window:Tab({
    Title = "Player",
    Icon = "solar:user-bold",
})

local VisualsTab = Window:Tab({
    Title = "Visuals",
    Icon = "solar:eye-bold",
})

local MiscTab = Window:Tab({
    Title = "Misc",
    Icon = "solar:settings-bold",
})

local KillAuraEnabled = false
local KillAuraConnection = nil

local KillAuraSmallEnabled = false
local KillAuraSmallConnection = nil

local AutoFarmEnabled = false
local AutoFarmConnection = nil

local EnemyNames = {
    "SkibidiToilet", "Big ST toilet", "Anti Rocket Toilet", "Armed Roller Rocket Toilet",
    "Armored Sniper Toilet", "Armored laser toilet", "Astro scientist toilet", "Big spider",
    "Big toilet", "Big Nuclear Toilet", "Big ST toilet", "Big sniper Toilet", "Big spider toilet",
    "Buzzsaw Mutant", "Camera toilet", "Cage Cleaner toilet", "Cagehead Toilet", "Catapult Sniper Toilet",
    "Crazy Toilet", "DJ Toilet", "Dual Buzzsaw toilet", "Explosive Roller Toilet", "Flamethrower toilet",
    "Flashlight toilet", "Flying Toilet", "Freezer toilet", "Frontline Guard Toilet", "G-toilet",
    "G-Toilet 2.0", "G-Toilet 3.0 (Mech suit)", "G-Toilet 4.0", "G-Toilet MK2", "General Toilet",
    "Giant Strider toilet", "Giant DJ Roller", "Giant Computer Toilet", "Ginger Toilet", "Glitched toilet",
    "Gun Toilet", "Gun Big Strider Toilet", "Heavy Soldier Toilet V2", "Heavy Toilet", "Huge DJ Toilet",
    "Huge Strider toilet", "Jetpack Toilet", "Jetpack Crazy Toilet", "Kamikaze Carrier Toilet",
    "Laser Toilet", "Mech Toilet", "Mutant", "Normal Toilet", "Rocket Toilet", "Scientist Toilet",
    "Sniper Toilet", "Spider Toilet", "Strider Toilet", "Toilet", "toilet"
}

local function IsEnemy(name)
    for _, enemyName in pairs(EnemyNames) do
        if name:lower():find(enemyName:lower()) or name:lower():find("toilet") then
            return true
        end
    end
    return false
end

local function GetLivingFolder()
    local folder = Workspace:FindFirstChild("Living") or Workspace:FindFirstChild("Living Folder")
    if not folder then
        for _, v in pairs(Workspace:GetChildren()) do
            if v.Name:lower():find("living") then
                return v
            end
        end
    end
    return folder
end

local function GetNearestEnemy()
    local nearest = nil
    local minDist = math.huge
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return nil end
    local hrp = character.HumanoidRootPart
    local hrpPos = hrp.Position
    
    local livingFolder = GetLivingFolder()
    if not livingFolder then return nil end
    
    for _, v in pairs(livingFolder:GetDescendants()) do
        if v:IsA("Model") and v ~= character and IsEnemy(v.Name) then
            local humanoid = v:FindFirstChildOfClass("Humanoid")
            local enemyPart = v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Torso") or v:FindFirstChild("Head")
            if humanoid and enemyPart and humanoid.Health > 0 then
                local dist = (enemyPart.Position - hrpPos).Magnitude
                if dist < minDist then
                    minDist = dist
                    nearest = v
                end
            end
        end
    end
    return nearest
end

local function GetNearestSmallEnemy()
    local nearest = nil
    local minDist = math.huge
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return nil end
    local hrp = character.HumanoidRootPart
    local hrpPos = hrp.Position
    
    local livingFolder = GetLivingFolder()
    if not livingFolder then return nil end
    
    for _, v in pairs(livingFolder:GetDescendants()) do
        if v:IsA("Model") and v ~= character and IsEnemy(v.Name) then
            local humanoid = v:FindFirstChildOfClass("Humanoid")
            local enemyPart = v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Torso") or v:FindFirstChild("Head")
            if humanoid and enemyPart and humanoid.Health > 0 and humanoid.MaxHealth <= 1000 then
                local dist = (enemyPart.Position - hrpPos).Magnitude
                if dist < minDist then
                    minDist = dist
                    nearest = v
                end
            end
        end
    end
    return nearest
end

local function StartKillAura()
    local currentTarget = nil
    KillAuraConnection = RunService.Heartbeat:Connect(function()
        if not KillAuraEnabled then return end
        local character = LocalPlayer.Character
        if not character or not character:FindFirstChild("HumanoidRootPart") then return end
        
        if currentTarget then
            local humanoid = currentTarget:FindFirstChildOfClass("Humanoid")
            if not humanoid or humanoid.Health <= 0 then
                currentTarget = nil
            end
        end
        
        if not currentTarget then
            currentTarget = GetNearestEnemy()
        end
        
        if currentTarget then
            local enemyPart = currentTarget:FindFirstChild("HumanoidRootPart") or currentTarget:FindFirstChild("Torso")
            if enemyPart then
                character.HumanoidRootPart.CFrame = enemyPart.CFrame * CFrame.new(0, 0, 3)
                ReplicatedStorage:WaitForChild("LMB"):FireServer()
            end
        end
    end)
end

local function StopKillAura()
    if KillAuraConnection then
        KillAuraConnection:Disconnect()
        KillAuraConnection = nil
    end
end

local function StartKillAuraSmall()
    local currentTarget = nil
    KillAuraSmallConnection = RunService.Heartbeat:Connect(function()
        if not KillAuraSmallEnabled then return end
        local character = LocalPlayer.Character
        if not character or not character:FindFirstChild("HumanoidRootPart") then return end
        
        if currentTarget then
            local humanoid = currentTarget:FindFirstChildOfClass("Humanoid")
            if not humanoid or humanoid.Health <= 0 then
                currentTarget = nil
            end
        end
        
        if not currentTarget then
            currentTarget = GetNearestSmallEnemy()
        end
        
        if currentTarget then
            local enemyPart = currentTarget:FindFirstChild("HumanoidRootPart") or currentTarget:FindFirstChild("Torso")
            if enemyPart then
                character.HumanoidRootPart.CFrame = enemyPart.CFrame * CFrame.new(0, 0, 3)
            end
            ReplicatedStorage:WaitForChild("LMB"):FireServer()
        end
    end)
end

local function StopKillAuraSmall()
    if KillAuraSmallConnection then
        KillAuraSmallConnection:Disconnect()
        KillAuraSmallConnection = nil
    end
end

local function StartAutoFarm()
    AutoFarmConnection = RunService.Heartbeat:Connect(function()
        if not AutoFarmEnabled then return end
        for _, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                v.HoldDuration = 0
                fireproximityprompt(v)
            end
        end
    end)
end

local function StopAutoFarm()
    if AutoFarmConnection then
        AutoFarmConnection:Disconnect()
        AutoFarmConnection = nil
    end
end

MainTab:Toggle({
    Title = "Kill Aura",
    Value = false,
    Callback = function(state)
        KillAuraEnabled = state
        if state then
            StartKillAura()
        else
            StopKillAura()
        end
    end
})

MainTab:Toggle({
    Title = "Kill Aura (Small Only)",
    Value = false,
    Callback = function(state)
        KillAuraSmallEnabled = state
        if state then
            StartKillAuraSmall()
        else
            StopKillAuraSmall()
        end
    end
})

MainTab:Toggle({
    Title = "Auto Farm (Cong Soon)",
    Value = false,
    Locked = true,
    LockedTitle = "Coming Soon",
    Callback = function(state)
    end
})

local InfAmmoEnabled = false
local InfAmmoConnection = nil

local function StartInfAmmo()
    InfAmmoConnection = RunService.Heartbeat:Connect(function()
        if not InfAmmoEnabled then return end
        local character = LocalPlayer.Character
        if not character then return end
        for _, tool in pairs(character:GetChildren()) do
            if tool:IsA("Tool") then
                local args = {tool, character.HumanoidRootPart.Position, "Reload", character.HumanoidRootPart.CFrame.LookVector}
                ReplicatedStorage:WaitForChild("GunSystem"):FireServer(unpack(args))
            end
        end
    end)
end

local function StopInfAmmo()
    if InfAmmoConnection then
        InfAmmoConnection:Disconnect()
        InfAmmoConnection = nil
    end
end

MainTab:Toggle({
    Title = "Infinite Ammo (Coming Soon)",
    Value = false,
    Locked = true,
    LockedTitle = "Coming Soon",
    Callback = function(state)
    end
})

local NoCooldownEnabled = false
local NoCooldownConnection = nil

local function StartNoCooldown()
    NoCooldownConnection = RunService.Heartbeat:Connect(function()
        if not NoCooldownEnabled then return end
        pcall(function()
            local livingFolder = GetLivingFolder()
            if not livingFolder then return end
            local playerModel = livingFolder:FindFirstChild(LocalPlayer.Name)
            if not playerModel then return end
            local cooldownFolder = playerModel:FindFirstChild("CooldownFolder")
            if cooldownFolder then
                for _, v in pairs(cooldownFolder:GetDescendants()) do
                    if v:IsA("BoolValue") then
                        v.Value = false
                    elseif v:IsA("NumberValue") then
                        v.Value = 0
                    end
                end
            end
            local valuesFolder = playerModel:FindFirstChild("ValuesFolder")
            if valuesFolder then
                local stun = valuesFolder:FindFirstChild("Stun")
                if stun then stun.Value = 0 end
            end
        end)
    end)
end

local function StopNoCooldown()
    if NoCooldownConnection then
        NoCooldownConnection:Disconnect()
        NoCooldownConnection = nil
    end
end

MainTab:Toggle({
    Title = "No Cooldown (Coming Soon)",
    Value = false,
    Locked = true,
    LockedTitle = "Coming Soon",
    Callback = function(state)
    end
})

local FlyEnabled = false
local FlySpeed = 50
local FlyConnection = nil
local BodyGyro = nil
local BodyVelocity = nil

local function StartFly()
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    local hrp = character.HumanoidRootPart
    
    BodyGyro = Instance.new("BodyGyro")
    BodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    BodyGyro.P = 1000000
    BodyGyro.Parent = hrp
    
    BodyVelocity = Instance.new("BodyVelocity")
    BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    BodyVelocity.Velocity = Vector3.new(0, 0, 0)
    BodyVelocity.Parent = hrp
    
    local UIS = game:GetService("UserInputService")
    
    FlyConnection = RunService.Heartbeat:Connect(function()
        if not FlyEnabled then return end
        local camera = Workspace.CurrentCamera
        local moveDir = Vector3.new(0, 0, 0)
        
        if UIS:IsKeyDown(Enum.KeyCode.W) then
            moveDir = moveDir + camera.CFrame.LookVector
        end
        if UIS:IsKeyDown(Enum.KeyCode.S) then
            moveDir = moveDir - camera.CFrame.LookVector
        end
        if UIS:IsKeyDown(Enum.KeyCode.A) then
            moveDir = moveDir - camera.CFrame.RightVector
        end
        if UIS:IsKeyDown(Enum.KeyCode.D) then
            moveDir = moveDir + camera.CFrame.RightVector
        end
        if UIS:IsKeyDown(Enum.KeyCode.Space) then
            moveDir = moveDir + Vector3.new(0, 1, 0)
        end
        if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
            moveDir = moveDir - Vector3.new(0, 1, 0)
        end
        
        if moveDir.Magnitude > 0 then
            moveDir = moveDir.Unit
        end
        
        BodyVelocity.Velocity = moveDir * FlySpeed
        BodyGyro.CFrame = camera.CFrame
    end)
end

local function StopFly()
    if FlyConnection then
        FlyConnection:Disconnect()
        FlyConnection = nil
    end
    if BodyGyro then
        BodyGyro:Destroy()
        BodyGyro = nil
    end
    if BodyVelocity then
        BodyVelocity:Destroy()
        BodyVelocity = nil
    end
end

PlayerTab:Toggle({
    Title = "Fly",
    Value = false,
    Callback = function(state)
        FlyEnabled = state
        if state then
            StartFly()
        else
            StopFly()
        end
    end
})

PlayerTab:Slider({
    Title = "Fly Speed",
    Value = {
        Min = 10,
        Max = 200,
        Default = 50,
    },
    Callback = function(value)
        FlySpeed = value
    end
})

PlayerTab:Slider({
    Title = "Walk Speed",
    Value = {
        Min = 16,
        Max = 200,
        Default = 16,
    },
    Callback = function(value)
        local character = LocalPlayer.Character
        if character and character:FindFirstChildOfClass("Humanoid") then
            character:FindFirstChildOfClass("Humanoid").WalkSpeed = value
        end
    end
})

PlayerTab:Slider({
    Title = "Jump Power",
    Value = {
        Min = 50,
        Max = 200,
        Default = 50,
    },
    Callback = function(value)
        local character = LocalPlayer.Character
        if character and character:FindFirstChildOfClass("Humanoid") then
            character:FindFirstChildOfClass("Humanoid").JumpPower = value
        end
    end
})



local NoclipEnabled = false
local NoclipConnection = nil

local function StartNoclip()
    NoclipConnection = RunService.Stepped:Connect(function()
        if not NoclipEnabled then return end
        local character = LocalPlayer.Character
        if character then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
end

local function StopNoclip()
    if NoclipConnection then
        NoclipConnection:Disconnect()
        NoclipConnection = nil
    end
    local character = LocalPlayer.Character
    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                part.CanCollide = true
            end
        end
    end
end

PlayerTab:Toggle({
    Title = "Noclip",
    Value = false,
    Callback = function(state)
        NoclipEnabled = state
        if state then
            StartNoclip()
        else
            StopNoclip()
        end
    end
})

local InfJumpEnabled = false
local UIS = game:GetService("UserInputService")

UIS.JumpRequest:Connect(function()
    if InfJumpEnabled then
        local character = LocalPlayer.Character
        if character and character:FindFirstChildOfClass("Humanoid") then
            character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)

PlayerTab:Toggle({
    Title = "Infinite Jump",
    Value = false,
    Callback = function(state)
        InfJumpEnabled = state
    end
})

PlayerTab:Button({
    Title = "Teleport to Corner",
    Callback = function()
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            character.HumanoidRootPart.CFrame = CFrame.new(0, 100, 0)
        end
    end
})

local SavedPosition = nil

PlayerTab:Button({
    Title = "Save Position",
    Callback = function()
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            SavedPosition = character.HumanoidRootPart.CFrame
            WindUI:Notify({
                Title = "Position Saved",
                Content = "Position saved!",
                Duration = 2,
            })
        end
    end
})

PlayerTab:Button({
    Title = "Load Position",
    Callback = function()
        if SavedPosition then
            local character = LocalPlayer.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                character.HumanoidRootPart.CFrame = SavedPosition
            end
        end
    end
})

local function UpdatePlayerList()
    local playerList = {}
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(playerList, player.Name)
        end
    end
    return playerList
end

local TeleportDropdown = PlayerTab:Dropdown({
    Title = "Teleport to Player",
    Values = UpdatePlayerList(),
    Callback = function(selected)
        local targetPlayer = Players:FindFirstChild(selected)
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local character = LocalPlayer.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
            end
        end
    end
})

PlayerTab:Button({
    Title = "Refresh Players",
    Callback = function()
        TeleportDropdown:Refresh(UpdatePlayerList())
    end
})

local ESPEnabled = false
local ESPFolder = Instance.new("Folder")
ESPFolder.Name = "ESP"
ESPFolder.Parent = game:GetService("CoreGui")

local function CreateESP(model)
    if not model:FindFirstChildOfClass("Humanoid") then return end
    local highlight = Instance.new("Highlight")
    highlight.Name = "ESP_" .. model.Name
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.5
    highlight.OutlineTransparency = 0
    highlight.Adornee = model
    highlight.Parent = ESPFolder
    return highlight
end

local function UpdateESP()
    for _, v in pairs(ESPFolder:GetChildren()) do
        v:Destroy()
    end
    if not ESPEnabled then return end
    local livingFolder = GetLivingFolder()
    if not livingFolder then return end
    for _, v in pairs(livingFolder:GetDescendants()) do
        if v:IsA("Model") and IsEnemy(v.Name) then
            local humanoid = v:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.Health > 0 then
                CreateESP(v)
            end
        end
    end
end

local ESPConnection = nil

local function StartESP()
    UpdateESP()
    ESPConnection = RunService.Heartbeat:Connect(function()
        if not ESPEnabled then return end
        UpdateESP()
    end)
end

local function StopESP()
    if ESPConnection then
        ESPConnection:Disconnect()
        ESPConnection = nil
    end
    for _, v in pairs(ESPFolder:GetChildren()) do
        v:Destroy()
    end
end

VisualsTab:Toggle({
    Title = "ESP (Enemy Highlight)",
    Value = false,
    Callback = function(state)
        ESPEnabled = state
        if state then
            StartESP()
        else
            StopESP()
        end
    end
})

local PlayerESPEnabled = false
local PlayerESPFolder = Instance.new("Folder")
PlayerESPFolder.Name = "PlayerESP"
PlayerESPFolder.Parent = game:GetService("CoreGui")

local function UpdatePlayerESP()
    for _, v in pairs(PlayerESPFolder:GetChildren()) do
        v:Destroy()
    end
    if not PlayerESPEnabled then return end
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local highlight = Instance.new("Highlight")
            highlight.Name = "ESP_" .. player.Name
            highlight.FillColor = Color3.fromRGB(0, 255, 0)
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.FillTransparency = 0.5
            highlight.OutlineTransparency = 0
            highlight.Adornee = player.Character
            highlight.Parent = PlayerESPFolder
        end
    end
end

local PlayerESPConnection = nil

VisualsTab:Toggle({
    Title = "Player ESP",
    Value = false,
    Callback = function(state)
        PlayerESPEnabled = state
        if state then
            UpdatePlayerESP()
            PlayerESPConnection = RunService.Heartbeat:Connect(function()
                UpdatePlayerESP()
            end)
        else
            if PlayerESPConnection then
                PlayerESPConnection:Disconnect()
                PlayerESPConnection = nil
            end
            for _, v in pairs(PlayerESPFolder:GetChildren()) do
                v:Destroy()
            end
        end
    end
})

local FullbrightEnabled = false
local OriginalAmbient = game:GetService("Lighting").Ambient
local OriginalBrightness = game:GetService("Lighting").Brightness
local OriginalOutdoorAmbient = game:GetService("Lighting").OutdoorAmbient

VisualsTab:Toggle({
    Title = "Fullbright",
    Value = false,
    Callback = function(state)
        FullbrightEnabled = state
        local Lighting = game:GetService("Lighting")
        if state then
            Lighting.Ambient = Color3.fromRGB(255, 255, 255)
            Lighting.Brightness = 2
            Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
        else
            Lighting.Ambient = OriginalAmbient
            Lighting.Brightness = OriginalBrightness
            Lighting.OutdoorAmbient = OriginalOutdoorAmbient
        end
    end
})

VisualsTab:Toggle({
    Title = "No Fog",
    Value = false,
    Callback = function(state)
        local Lighting = game:GetService("Lighting")
        if state then
            Lighting.FogEnd = 100000
            Lighting.FogStart = 0
        else
            Lighting.FogEnd = 1000
            Lighting.FogStart = 0
        end
    end
})

local FOVValue = 70
local FOVConnection = nil

VisualsTab:Slider({
    Title = "FOV",
    Value = {
        Min = 30,
        Max = 120,
        Default = 70,
    },
    Callback = function(value)
        FOVValue = value
        if FOVConnection then
            FOVConnection:Disconnect()
        end
        FOVConnection = RunService.RenderStepped:Connect(function()
            Workspace.CurrentCamera.FieldOfView = FOVValue
        end)
    end
})

local RainbowHatEnabled = false
local RainbowHat = nil
local RainbowConnection = nil

VisualsTab:Toggle({
    Title = "Rainbow Asian Hat",
    Value = false,
    Callback = function(state)
        RainbowHatEnabled = state
        if state then
            local character = LocalPlayer.Character
            if character and character:FindFirstChild("Head") then
                RainbowHat = Instance.new("Part")
                RainbowHat.Name = "RainbowHat"
                RainbowHat.Size = Vector3.new(3, 0.1, 3)
                RainbowHat.CanCollide = false
                RainbowHat.Massless = true
                RainbowHat.Material = Enum.Material.Neon
                RainbowHat.Parent = character
                
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = Enum.MeshType.FileMesh
                mesh.MeshId = "rbxassetid://1028713"
                mesh.Scale = Vector3.new(1.2, 0.8, 1.2)
                mesh.Parent = RainbowHat
                
                local weld = Instance.new("Weld")
                weld.Part0 = character.Head
                weld.Part1 = RainbowHat
                weld.C0 = CFrame.new(0, 0.5, 0)
                weld.Parent = RainbowHat
                
                local hue = 0
                RainbowConnection = RunService.Heartbeat:Connect(function()
                    if RainbowHat then
                        hue = (hue + 0.01) % 1
                        RainbowHat.Color = Color3.fromHSV(hue, 1, 1)
                    end
                end)
            end
        else
            if RainbowConnection then
                RainbowConnection:Disconnect()
                RainbowConnection = nil
            end
            if RainbowHat then
                RainbowHat:Destroy()
                RainbowHat = nil
            end
        end
    end
})

local AutoSkipHeliEnabled = false
local AutoSkipHeliConnection = nil

local function StartAutoSkipHeli()
    AutoSkipHeliConnection = RunService.Heartbeat:Connect(function()
        if not AutoSkipHeliEnabled then return end
        pcall(function()
            ReplicatedStorage:WaitForChild("SkipHelicopter"):FireServer()
        end)
    end)
end

local function StopAutoSkipHeli()
    if AutoSkipHeliConnection then
        AutoSkipHeliConnection:Disconnect()
        AutoSkipHeliConnection = nil
    end
end

MiscTab:Toggle({
    Title = "Auto Skip Helicopter",
    Value = false,
    Callback = function(state)
        AutoSkipHeliEnabled = state
        if state then
            StartAutoSkipHeli()
        else
            StopAutoSkipHeli()
        end
    end
})

MiscTab:Section({
    Title = "by kumkki.",
    TextSize = 12,
})



