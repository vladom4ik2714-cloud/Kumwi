local _0x1a2b3c = {}
local function _0x4d5e6f()
    local _0x7g8h9i, _0x0j1k2l = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/yourusername/yourrepo/main/keys.txt")
    end)
    if _0x7g8h9i then
        local _0x3m4n5o = {}
        for _0x6p7q8r in _0x0j1k2l:gmatch("[^\r\n]+") do
            table.insert(_0x3m4n5o, _0x6p7q8r)
        end
        return _0x3m4n5o
    else
        local _0x9s0t1u = {
            "\75\85\77\87\73\50\48\50\52","\80\82\69\77\73\85\77\49\50\51","\83\75\73\66\73\68\73\52\53\54",
            "\84\79\73\76\69\84\55\56\57","\66\65\84\84\76\69\70\82\79\78\84\50\48\50\53","\87\73\78\68\85\73\57\57\57",
            "\75\85\77\87\73\45\80\82\69\77\73\85\77","\83\75\73\66\73\68\73\45\69\76\73\84\69",
            "\66\65\84\84\76\69\70\82\79\78\84\45\86\73\80","\84\79\73\76\69\84\45\77\65\83\84\69\82",
            "\87\73\78\68\85\73\45\80\82\79","\75\85\77\87\73\45\85\76\84\73\77\65\84\69",
            "\80\82\69\77\73\85\77\45\65\67\67\69\83\83","\86\73\80\45\77\69\77\66\69\82",
            "\69\76\73\84\69\45\85\83\69\82","\77\65\83\84\69\82\45\75\69\89",
            "\85\76\84\73\77\65\84\69\45\80\65\83\83","\71\79\76\68\69\78\45\75\69\89",
            "\68\73\65\77\79\78\68\45\65\67\67\69\83\83","\80\76\65\84\73\78\85\77\45\86\73\80"
        }
        local _0x2v3w4x = {}
        for _, _0x5y6z7a in pairs(_0x9s0t1u) do
            local _0x8b9c0d = ""
            for _0x1e2f3g in _0x5y6z7a:gmatch("%d+") do
                _0x8b9c0d = _0x8b9c0d .. string.char(tonumber(_0x1e2f3g))
            end
            table.insert(_0x2v3w4x, _0x8b9c0d)
        end
        return _0x2v3w4x
    end
end
_0x1a2b3c.ValidKeys = _0x4d5e6f()

local function _0x4h5i6j()
    local _0x7k8l9m = game:GetService("RbxAnalyticsService"):GetClientId()
    return _0x7k8l9m
end
local function _0x9w0x1y()
    local _0x2z3a4b = Instance.new("ScreenGui")
    local _0x5c6d7e = Instance.new("Frame")
    local _0x8f9g0h = Instance.new("TextLabel")
    local _0x1i2j3k = Instance.new("TextBox")
    local _0x4l5m6n = Instance.new("TextButton")
    local _0x7o8p9q = Instance.new("TextButton")
    local _0x0r1s2t = Instance.new("TextLabel")
    local _0x3u4v5w = Instance.new("TextButton")
    _0x2z3a4b.Name = "KeySystemGUI"
    _0x2z3a4b.Parent = game.CoreGui
    _0x2z3a4b.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    _0x5c6d7e.Parent = _0x2z3a4b
    _0x5c6d7e.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    _0x5c6d7e.BorderSizePixel = 0
    _0x5c6d7e.Position = UDim2.new(0.5, -200, 0.5, -175)
    _0x5c6d7e.Size = UDim2.new(0, 400, 0, 350)
    _0x5c6d7e.Active = true
    _0x5c6d7e.Draggable = true
    local _0x6x7y8z = Instance.new("UICorner")
    _0x6x7y8z.CornerRadius = UDim.new(0, 10)
    _0x6x7y8z.Parent = _0x5c6d7e
    _0x8f9g0h.Parent = _0x5c6d7e
    _0x8f9g0h.BackgroundTransparency = 1
    _0x8f9g0h.Position = UDim2.new(0, 0, 0, 10)
    _0x8f9g0h.Size = UDim2.new(1, 0, 0, 50)
    _0x8f9g0h.Font = Enum.Font.GothamBold
    _0x8f9g0h.Text = "🚀 Kumwi Hub - Key System"
    _0x8f9g0h.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0x8f9g0h.TextSize = 18
    _0x1i2j3k.Parent = _0x5c6d7e
    _0x1i2j3k.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    _0x1i2j3k.BorderSizePixel = 0
    _0x1i2j3k.Position = UDim2.new(0.1, 0, 0.25, 0)
    _0x1i2j3k.Size = UDim2.new(0.8, 0, 0, 40)
    _0x1i2j3k.Font = Enum.Font.Gotham
    _0x1i2j3k.PlaceholderText = "Enter your key here..."
    _0x1i2j3k.Text = ""
    _0x1i2j3k.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0x1i2j3k.TextSize = 14
    local _0x9a0b1c = Instance.new("UICorner")
    _0x9a0b1c.CornerRadius = UDim.new(0, 5)
    _0x9a0b1c.Parent = _0x1i2j3k
    _0x3u4v5w.Parent = _0x5c6d7e
    _0x3u4v5w.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
    _0x3u4v5w.BorderSizePixel = 0
    _0x3u4v5w.Position = UDim2.new(0.1, 0, 0.45, 0)
    _0x3u4v5w.Size = UDim2.new(0.8, 0, 0, 40)
    _0x3u4v5w.Font = Enum.Font.GothamBold
    _0x3u4v5w.Text = "🔗 Get Key (Linkvertise)"
    _0x3u4v5w.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0x3u4v5w.TextSize = 14
    local _0x2d3e4f = Instance.new("UICorner")
    _0x2d3e4f.CornerRadius = UDim.new(0, 5)
    _0x2d3e4f.Parent = _0x3u4v5w
    _0x4l5m6n.Parent = _0x5c6d7e
    _0x4l5m6n.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
    _0x4l5m6n.BorderSizePixel = 0
    _0x4l5m6n.Position = UDim2.new(0.1, 0, 0.62, 0)
    _0x4l5m6n.Size = UDim2.new(0.35, 0, 0, 40)
    _0x4l5m6n.Font = Enum.Font.GothamBold
    _0x4l5m6n.Text = "Submit Key"
    _0x4l5m6n.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0x4l5m6n.TextSize = 14
    local _0x5g6h7i = Instance.new("UICorner")
    _0x5g6h7i.CornerRadius = UDim.new(0, 5)
    _0x5g6h7i.Parent = _0x4l5m6n
    _0x7o8p9q.Parent = _0x5c6d7e
    _0x7o8p9q.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
    _0x7o8p9q.BorderSizePixel = 0
    _0x7o8p9q.Position = UDim2.new(0.55, 0, 0.62, 0)
    _0x7o8p9q.Size = UDim2.new(0.35, 0, 0, 40)
    _0x7o8p9q.Font = Enum.Font.GothamBold
    _0x7o8p9q.Text = "Close"
    _0x7o8p9q.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0x7o8p9q.TextSize = 14
    local _0x8j9k0l = Instance.new("UICorner")
    _0x8j9k0l.CornerRadius = UDim.new(0, 5)
    _0x8j9k0l.Parent = _0x7o8p9q
    _0x0r1s2t.Parent = _0x5c6d7e
    _0x0r1s2t.BackgroundTransparency = 1
    _0x0r1s2t.Position = UDim2.new(0, 0, 0.78, 0)
    _0x0r1s2t.Size = UDim2.new(1, 0, 0, 60)
    _0x0r1s2t.Font = Enum.Font.Gotham
    _0x0r1s2t.Text = "Click 'Get Key' to get your access key\nHWID: " .. _0x4h5i6j()
    _0x0r1s2t.TextColor3 = Color3.fromRGB(200, 200, 200)
    _0x0r1s2t.TextSize = 12
    _0x0r1s2t.TextWrapped = true
    return _0x2z3a4b, _0x1i2j3k, _0x4l5m6n, _0x7o8p9q, _0x0r1s2t, _0x3u4v5w
end
local function _0x1m2n3o()
    local _0x4p5q6r, _0x7s8t9u, _0x0v1w2x, _0x3y4z5a, _0x6b7c8d, _0x9e0f1g = _0x9w0x1y()
    local _0x2h3i4j = false
    _0x9e0f1g.MouseButton1Click:Connect(function()
        local _0x9w0x1y = "\104\116\116\112\115\58\47\47\108\105\110\107\118\101\114\116\105\115\101\46\99\111\109\47\50\57\56\54\54\54\56\47\81\77\83\120\97\105\99\73\75\71\89\106\63\111\61\115\104\97\114\105\110\103"
        local _0x2z3a4b = ""
        for _0x5c6d7e in _0x9w0x1y:gmatch("%d+") do
            _0x2z3a4b = _0x2z3a4b .. string.char(tonumber(_0x5c6d7e))
        end
        setclipboard(_0x2z3a4b)
        _0x6b7c8d.Text = "✅ Link copied to clipboard!\nPaste in browser to get key"
        _0x6b7c8d.TextColor3 = Color3.fromRGB(0, 255, 0)
    end)
    _0x0v1w2x.MouseButton1Click:Connect(function()
        local _0x5k6l7m = _0x7s8t9u.Text
        local _0x8n9o0p = false
        for _, _0x1q2r3s in pairs(_0x1a2b3c.ValidKeys) do
            if _0x5k6l7m == _0x1q2r3s then
                _0x8n9o0p = true
                break
            end
        end
        if _0x8n9o0p then
            _0x6b7c8d.Text = "✅ Valid key! Loading script..."
            _0x6b7c8d.TextColor3 = Color3.fromRGB(0, 255, 0)
            wait(2)
            _0x4p5q6r:Destroy()
            _0x2h3i4j = true
        else
            _0x6b7c8d.Text = "❌ Invalid key! Get key from linkvertise."
            _0x6b7c8d.TextColor3 = Color3.fromRGB(255, 0, 0)
            _0x7s8t9u.Text = ""
        end
    end)
    _0x3y4z5a.MouseButton1Click:Connect(function()
        _0x4p5q6r:Destroy()
        game.Players.LocalPlayer:Kick("Key system closed")
    end)
    repeat wait(0.1) until _0x2h3i4j or not _0x4p5q6r.Parent
    return _0x2h3i4j
end
if not _0x1m2n3o() then
    return
end
local _0x4t5u6v = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
local _0x7w8x9y = game:GetService("Players")
local _0x0z1a2b = game:GetService("RunService")
local _0x3c4d5e = game:GetService("ReplicatedStorage")
local _0x6f7g8h = game:GetService("Workspace")
local _0x9i0j1k = _0x7w8x9y.LocalPlayer
local _0x2l3m4n = _0x4t5u6v:CreateWindow({
    Title = "Kumwi Hub",
    Folder = "SkibidiHub",
    Icon = "sword",
    ToggleKey = Enum.KeyCode.K,
    Topbar = {Height = 44, ButtonsType = "Mac"},
})
local _0x5o6p7q = _0x2l3m4n:Tab({Title = "Main", Icon = "solar:home-2-bold"})
local _0x8r9s0t = _0x2l3m4n:Tab({Title = "Player", Icon = "solar:user-bold"})
local _0x1u2v3w = _0x2l3m4n:Tab({Title = "Visuals", Icon = "solar:eye-bold"})
local _0x4x5y6z = _0x2l3m4n:Tab({Title = "Misc", Icon = "solar:settings-bold"})
local _0x7a8b9c = false
local _0x0d1e2f = nil
local _0x3g4h5i = false
local _0x6j7k8l = nil
local _0x9m0n1o = false
local _0x2p3q4r = nil
local _0x5s6t7u = {
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
local function _0x8v9w0x(_0x1y2z3a)
    for _, _0x4b5c6d in pairs(_0x5s6t7u) do
        if _0x1y2z3a:lower():find(_0x4b5c6d:lower()) or _0x1y2z3a:lower():find("toilet") then
            return true
        end
    end
    return false
end
local function _0x7e8f9g()
    local _0x0h1i2j = _0x6f7g8h:FindFirstChild("Living") or _0x6f7g8h:FindFirstChild("Living Folder")
    if not _0x0h1i2j then
        for _, _0x3k4l5m in pairs(_0x6f7g8h:GetChildren()) do
            if _0x3k4l5m.Name:lower():find("living") then
                return _0x3k4l5m
            end
        end
    end
    return _0x0h1i2j
end
local function _0x6n7o8p()
    local _0x9q0r1s = nil
    local _0x2t3u4v = math.huge
    local _0x5w6x7y = _0x9i0j1k.Character
    if not _0x5w6x7y or not _0x5w6x7y:FindFirstChild("HumanoidRootPart") then return nil end
    local _0x8z9a0b = _0x5w6x7y.HumanoidRootPart
    local _0x1c2d3e = _0x8z9a0b.Position
    local _0x4f5g6h = _0x7e8f9g()
    if not _0x4f5g6h then return nil end
    for _, _0x7i8j9k in pairs(_0x4f5g6h:GetDescendants()) do
        if _0x7i8j9k:IsA("Model") and _0x7i8j9k ~= _0x5w6x7y and _0x8v9w0x(_0x7i8j9k.Name) then
            local _0x0l1m2n = _0x7i8j9k:FindFirstChildOfClass("Humanoid")
            local _0x3o4p5q = _0x7i8j9k:FindFirstChild("HumanoidRootPart") or _0x7i8j9k:FindFirstChild("Torso") or _0x7i8j9k:FindFirstChild("Head")
            if _0x0l1m2n and _0x3o4p5q and _0x0l1m2n.Health > 0 then
                local _0x6r7s8t = (_0x3o4p5q.Position - _0x1c2d3e).Magnitude
                if _0x6r7s8t < _0x2t3u4v then
                    _0x2t3u4v = _0x6r7s8t
                    _0x9q0r1s = _0x7i8j9k
                end
            end
        end
    end
    return _0x9q0r1s
end
local function _0x9u0v1w()
    local _0x2x3y4z = nil
    local _0x5a6b7c = math.huge
    local _0x8d9e0f = _0x9i0j1k.Character
    if not _0x8d9e0f or not _0x8d9e0f:FindFirstChild("HumanoidRootPart") then return nil end
    local _0x1g2h3i = _0x8d9e0f.HumanoidRootPart
    local _0x4j5k6l = _0x1g2h3i.Position
    local _0x7m8n9o = _0x7e8f9g()
    if not _0x7m8n9o then return nil end
    for _, _0x0p1q2r in pairs(_0x7m8n9o:GetDescendants()) do
        if _0x0p1q2r:IsA("Model") and _0x0p1q2r ~= _0x8d9e0f and _0x8v9w0x(_0x0p1q2r.Name) then
            local _0x3s4t5u = _0x0p1q2r:FindFirstChildOfClass("Humanoid")
            local _0x6v7w8x = _0x0p1q2r:FindFirstChild("HumanoidRootPart") or _0x0p1q2r:FindFirstChild("Torso") or _0x0p1q2r:FindFirstChild("Head")
            if _0x3s4t5u and _0x6v7w8x and _0x3s4t5u.Health > 0 and _0x3s4t5u.MaxHealth <= 1000 then
                local _0x9y0z1a = (_0x6v7w8x.Position - _0x4j5k6l).Magnitude
                if _0x9y0z1a < _0x5a6b7c then
                    _0x5a6b7c = _0x9y0z1a
                    _0x2x3y4z = _0x0p1q2r
                end
            end
        end
    end
    return _0x2x3y4z
end
local function _0x2b3c4d()
    local _0x5e6f7g = nil
    _0x0d1e2f = _0x0z1a2b.Heartbeat:Connect(function()
        if not _0x7a8b9c then return end
        local _0x8h9i0j = _0x9i0j1k.Character
        if not _0x8h9i0j or not _0x8h9i0j:FindFirstChild("HumanoidRootPart") then return end
        if _0x5e6f7g then
            local _0x1k2l3m = _0x5e6f7g:FindFirstChildOfClass("Humanoid")
            if not _0x1k2l3m or _0x1k2l3m.Health <= 0 then
                _0x5e6f7g = nil
            end
        end
        if not _0x5e6f7g then
            _0x5e6f7g = _0x6n7o8p()
        end
        if _0x5e6f7g then
            local _0x4n5o6p = _0x5e6f7g:FindFirstChild("HumanoidRootPart") or _0x5e6f7g:FindFirstChild("Torso")
            if _0x4n5o6p then
                _0x8h9i0j.HumanoidRootPart.CFrame = _0x4n5o6p.CFrame * CFrame.new(0, 0, 3)
                _0x3c4d5e:WaitForChild("LMB"):FireServer()
            end
        end
    end)
end
local function _0x7q8r9s()
    if _0x0d1e2f then
        _0x0d1e2f:Disconnect()
        _0x0d1e2f = nil
    end
end
local function _0x0t1u2v()
    local _0x3w4x5y = nil
    _0x6j7k8l = _0x0z1a2b.Heartbeat:Connect(function()
        if not _0x3g4h5i then return end
        local _0x6z7a8b = _0x9i0j1k.Character
        if not _0x6z7a8b or not _0x6z7a8b:FindFirstChild("HumanoidRootPart") then return end
        if _0x3w4x5y then
            local _0x9c0d1e = _0x3w4x5y:FindFirstChildOfClass("Humanoid")
            if not _0x9c0d1e or _0x9c0d1e.Health <= 0 then
                _0x3w4x5y = nil
            end
        end
        if not _0x3w4x5y then
            _0x3w4x5y = _0x9u0v1w()
        end
        if _0x3w4x5y then
            local _0x2f3g4h = _0x3w4x5y:FindFirstChild("HumanoidRootPart") or _0x3w4x5y:FindFirstChild("Torso")
            if _0x2f3g4h then
                _0x6z7a8b.HumanoidRootPart.CFrame = _0x2f3g4h.CFrame * CFrame.new(0, 0, 3)
            end
            _0x3c4d5e:WaitForChild("LMB"):FireServer()
        end
    end)
end
local function _0x5i6j7k()
    if _0x6j7k8l then
        _0x6j7k8l:Disconnect()
        _0x6j7k8l = nil
    end
end
local function _0x8l9m0n()
    _0x2p3q4r = _0x0z1a2b.Heartbeat:Connect(function()
        if not _0x9m0n1o then return end
        for _, _0x1o2p3q in pairs(_0x6f7g8h:GetDescendants()) do
            if _0x1o2p3q:IsA("ProximityPrompt") then
                _0x1o2p3q.HoldDuration = 0
                fireproximityprompt(_0x1o2p3q)
            end
        end
    end)
end
local function _0x4r5s6t()
    if _0x2p3q4r then
        _0x2p3q4r:Disconnect()
        _0x2p3q4r = nil
    end
end
_0x5o6p7q:Toggle({
    Title = "Kill Aura",
    Value = false,
    Callback = function(_0x7u8v9w)
        _0x7a8b9c = _0x7u8v9w
        if _0x7u8v9w then
            _0x2b3c4d()
        else
            _0x7q8r9s()
        end
    end
})
_0x5o6p7q:Toggle({
    Title = "Kill Aura (Small Only)",
    Value = false,
    Callback = function(_0x0x1y2z)
        _0x3g4h5i = _0x0x1y2z
        if _0x0x1y2z then
            _0x0t1u2v()
        else
            _0x5i6j7k()
        end
    end
})
_0x5o6p7q:Toggle({
    Title = "Auto Farm (Cong Soon)",
    Value = false,
    Locked = true,
    LockedTitle = "Coming Soon",
    Callback = function(_0x3a4b5c) end
})
local _0x6d7e8f = false
local _0x9g0h1i = nil
local function _0x2j3k4l()
    _0x9g0h1i = _0x0z1a2b.Heartbeat:Connect(function()
        if not _0x6d7e8f then return end
        local _0x5m6n7o = _0x9i0j1k.Character
        if not _0x5m6n7o then return end
        for _, _0x8p9q0r in pairs(_0x5m6n7o:GetChildren()) do
            if _0x8p9q0r:IsA("Tool") then
                local _0x1s2t3u = {_0x8p9q0r, _0x5m6n7o.HumanoidRootPart.Position, "Reload", _0x5m6n7o.HumanoidRootPart.CFrame.LookVector}
                _0x3c4d5e:WaitForChild("GunSystem"):FireServer(unpack(_0x1s2t3u))
            end
        end
    end)
end
local function _0x4v5w6x()
    if _0x9g0h1i then
        _0x9g0h1i:Disconnect()
        _0x9g0h1i = nil
    end
end
_0x5o6p7q:Toggle({
    Title = "Infinite Ammo (Coming Soon)",
    Value = false,
    Locked = true,
    LockedTitle = "Coming Soon",
    Callback = function(_0x7y8z9a) end
})
local _0x0b1c2d = false
local _0x3e4f5g = nil
local function _0x6h7i8j()
    _0x3e4f5g = _0x0z1a2b.Heartbeat:Connect(function()
        if not _0x0b1c2d then return end
        pcall(function()
            local _0x9k0l1m = _0x7e8f9g()
            if not _0x9k0l1m then return end
            local _0x2n3o4p = _0x9k0l1m:FindFirstChild(_0x9i0j1k.Name)
            if not _0x2n3o4p then return end
            local _0x5q6r7s = _0x2n3o4p:FindFirstChild("CooldownFolder")
            if _0x5q6r7s then
                for _, _0x8t9u0v in pairs(_0x5q6r7s:GetDescendants()) do
                    if _0x8t9u0v:IsA("BoolValue") then
                        _0x8t9u0v.Value = false
                    elseif _0x8t9u0v:IsA("NumberValue") then
                        _0x8t9u0v.Value = 0
                    end
                end
            end
            local _0x1w2x3y = _0x2n3o4p:FindFirstChild("ValuesFolder")
            if _0x1w2x3y then
                local _0x4z5a6b = _0x1w2x3y:FindFirstChild("Stun")
                if _0x4z5a6b then _0x4z5a6b.Value = 0 end
            end
        end)
    end)
end
local function _0x7c8d9e()
    if _0x3e4f5g then
        _0x3e4f5g:Disconnect()
        _0x3e4f5g = nil
    end
end
_0x5o6p7q:Toggle({
    Title = "No Cooldown (Coming Soon)",
    Value = false,
    Locked = true,
    LockedTitle = "Coming Soon",
    Callback = function(_0x0f1g2h) end
})
local _0x3i4j5k = false
local _0x6l7m8n = 50
local _0x9o0p1q = nil
local _0x2r3s4t = nil
local _0x5u6v7w = nil
local function _0x8x9y0z()
    local _0x1a2b3c = _0x9i0j1k.Character
    if not _0x1a2b3c or not _0x1a2b3c:FindFirstChild("HumanoidRootPart") then return end
    local _0x4d5e6f = _0x1a2b3c.HumanoidRootPart
    _0x2r3s4t = Instance.new("BodyGyro")
    _0x2r3s4t.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    _0x2r3s4t.P = 1000000
    _0x2r3s4t.Parent = _0x4d5e6f
    _0x5u6v7w = Instance.new("BodyVelocity")
    _0x5u6v7w.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    _0x5u6v7w.Velocity = Vector3.new(0, 0, 0)
    _0x5u6v7w.Parent = _0x4d5e6f
    local _0x7g8h9i = game:GetService("UserInputService")
    _0x9o0p1q = _0x0z1a2b.Heartbeat:Connect(function()
        if not _0x3i4j5k then return end
        local _0x0j1k2l = _0x6f7g8h.CurrentCamera
        local _0x3m4n5o = Vector3.new(0, 0, 0)
        if _0x7g8h9i:IsKeyDown(Enum.KeyCode.W) then
            _0x3m4n5o = _0x3m4n5o + _0x0j1k2l.CFrame.LookVector
        end
        if _0x7g8h9i:IsKeyDown(Enum.KeyCode.S) then
            _0x3m4n5o = _0x3m4n5o - _0x0j1k2l.CFrame.LookVector
        end
        if _0x7g8h9i:IsKeyDown(Enum.KeyCode.A) then
            _0x3m4n5o = _0x3m4n5o - _0x0j1k2l.CFrame.RightVector
        end
        if _0x7g8h9i:IsKeyDown(Enum.KeyCode.D) then
            _0x3m4n5o = _0x3m4n5o + _0x0j1k2l.CFrame.RightVector
        end
        if _0x7g8h9i:IsKeyDown(Enum.KeyCode.Space) then
            _0x3m4n5o = _0x3m4n5o + Vector3.new(0, 1, 0)
        end
        if _0x7g8h9i:IsKeyDown(Enum.KeyCode.LeftControl) then
            _0x3m4n5o = _0x3m4n5o - Vector3.new(0, 1, 0)
        end
        if _0x3m4n5o.Magnitude > 0 then
            _0x3m4n5o = _0x3m4n5o.Unit
        end
        _0x5u6v7w.Velocity = _0x3m4n5o * _0x6l7m8n
        _0x2r3s4t.CFrame = _0x0j1k2l.CFrame
    end)
end
local function _0x6p7q8r()
    if _0x9o0p1q then
        _0x9o0p1q:Disconnect()
        _0x9o0p1q = nil
    end
    if _0x2r3s4t then
        _0x2r3s4t:Destroy()
        _0x2r3s4t = nil
    end
    if _0x5u6v7w then
        _0x5u6v7w:Destroy()
        _0x5u6v7w = nil
    end
end
_0x8r9s0t:Toggle({
    Title = "Fly",
    Value = false,
    Callback = function(_0x9s0t1u)
        _0x3i4j5k = _0x9s0t1u
        if _0x9s0t1u then
            _0x8x9y0z()
        else
            _0x6p7q8r()
        end
    end
})
_0x8r9s0t:Slider({
    Title = "Fly Speed",
    Value = {Min = 10, Max = 200, Default = 50},
    Callback = function(_0x2v3w4x)
        _0x6l7m8n = _0x2v3w4x
    end
})
_0x8r9s0t:Slider({
    Title = "Walk Speed",
    Value = {Min = 16, Max = 200, Default = 16},
    Callback = function(_0x5y6z7a)
        local _0x8b9c0d = _0x9i0j1k.Character
        if _0x8b9c0d and _0x8b9c0d:FindFirstChildOfClass("Humanoid") then
            _0x8b9c0d:FindFirstChildOfClass("Humanoid").WalkSpeed = _0x5y6z7a
        end
    end
})
_0x8r9s0t:Slider({
    Title = "Jump Power",
    Value = {Min = 50, Max = 200, Default = 50},
    Callback = function(_0x1e2f3g)
        local _0x4h5i6j = _0x9i0j1k.Character
        if _0x4h5i6j and _0x4h5i6j:FindFirstChildOfClass("Humanoid") then
            _0x4h5i6j:FindFirstChildOfClass("Humanoid").JumpPower = _0x1e2f3g
        end
    end
})
local _0x7k8l9m = false
local _0x0n1o2p = nil
local function _0x3q4r5s()
    _0x0n1o2p = _0x0z1a2b.Stepped:Connect(function()
        if not _0x7k8l9m then return end
        local _0x6t7u8v = _0x9i0j1k.Character
        if _0x6t7u8v then
            for _, _0x9w0x1y in pairs(_0x6t7u8v:GetDescendants()) do
                if _0x9w0x1y:IsA("BasePart") then
                    _0x9w0x1y.CanCollide = false
                end
            end
        end
    end)
end
local function _0x2z3a4b()
    if _0x0n1o2p then
        _0x0n1o2p:Disconnect()
        _0x0n1o2p = nil
    end
    local _0x5c6d7e = _0x9i0j1k.Character
    if _0x5c6d7e then
        for _, _0x8f9g0h in pairs(_0x5c6d7e:GetDescendants()) do
            if _0x8f9g0h:IsA("BasePart") and _0x8f9g0h.Name ~= "HumanoidRootPart" then
                _0x8f9g0h.CanCollide = true
            end
        end
    end
end
_0x8r9s0t:Toggle({
    Title = "Noclip",
    Value = false,
    Callback = function(_0x1i2j3k)
        _0x7k8l9m = _0x1i2j3k
        if _0x1i2j3k then
            _0x3q4r5s()
        else
            _0x2z3a4b()
        end
    end
})
local _0x4l5m6n = false
local _0x7o8p9q = game:GetService("UserInputService")
_0x7o8p9q.JumpRequest:Connect(function()
    if _0x4l5m6n then
        local _0x0r1s2t = _0x9i0j1k.Character
        if _0x0r1s2t and _0x0r1s2t:FindFirstChildOfClass("Humanoid") then
            _0x0r1s2t:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)
_0x8r9s0t:Toggle({
    Title = "Infinite Jump",
    Value = false,
    Callback = function(_0x3u4v5w)
        _0x4l5m6n = _0x3u4v5w
    end
})
_0x8r9s0t:Button({
    Title = "Teleport to Corner",
    Callback = function()
        local _0x6x7y8z = _0x9i0j1k.Character
        if _0x6x7y8z and _0x6x7y8z:FindFirstChild("HumanoidRootPart") then
            _0x6x7y8z.HumanoidRootPart.CFrame = CFrame.new(0, 100, 0)
        end
    end
})
local _0x9a0b1c = nil
_0x8r9s0t:Button({
    Title = "Save Position",
    Callback = function()
        local _0x2d3e4f = _0x9i0j1k.Character
        if _0x2d3e4f and _0x2d3e4f:FindFirstChild("HumanoidRootPart") then
            _0x9a0b1c = _0x2d3e4f.HumanoidRootPart.CFrame
            _0x4t5u6v:Notify({
                Title = "Position Saved",
                Content = "Position saved!",
                Duration = 2,
            })
        end
    end
})
_0x8r9s0t:Button({
    Title = "Load Position",
    Callback = function()
        if _0x9a0b1c then
            local _0x5g6h7i = _0x9i0j1k.Character
            if _0x5g6h7i and _0x5g6h7i:FindFirstChild("HumanoidRootPart") then
                _0x5g6h7i.HumanoidRootPart.CFrame = _0x9a0b1c
            end
        end
    end
})
local function _0x8j9k0l()
    local _0x1m2n3o = {}
    for _, _0x4p5q6r in pairs(_0x7w8x9y:GetPlayers()) do
        if _0x4p5q6r ~= _0x9i0j1k then
            table.insert(_0x1m2n3o, _0x4p5q6r.Name)
        end
    end
    return _0x1m2n3o
end
local _0x7s8t9u = _0x8r9s0t:Dropdown({
    Title = "Teleport to Player",
    Values = _0x8j9k0l(),
    Callback = function(_0x0v1w2x)
        local _0x3y4z5a = _0x7w8x9y:FindFirstChild(_0x0v1w2x)
        if _0x3y4z5a and _0x3y4z5a.Character and _0x3y4z5a.Character:FindFirstChild("HumanoidRootPart") then
            local _0x6b7c8d = _0x9i0j1k.Character
            if _0x6b7c8d and _0x6b7c8d:FindFirstChild("HumanoidRootPart") then
                _0x6b7c8d.HumanoidRootPart.CFrame = _0x3y4z5a.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
            end
        end
    end
})
_0x8r9s0t:Button({
    Title = "Refresh Players",
    Callback = function()
        _0x7s8t9u:Refresh(_0x8j9k0l())
    end
})
local _0x9e0f1g = false
local _0x2h3i4j = Instance.new("Folder")
_0x2h3i4j.Name = "ESP"
_0x2h3i4j.Parent = game:GetService("CoreGui")
local function _0x5k6l7m(_0x8n9o0p)
    if not _0x8n9o0p:FindFirstChildOfClass("Humanoid") then return end
    local _0x1q2r3s = Instance.new("Highlight")
    _0x1q2r3s.Name = "ESP_" .. _0x8n9o0p.Name
    _0x1q2r3s.FillColor = Color3.fromRGB(255, 0, 0)
    _0x1q2r3s.OutlineColor = Color3.fromRGB(255, 255, 255)
    _0x1q2r3s.FillTransparency = 0.5
    _0x1q2r3s.OutlineTransparency = 0
    _0x1q2r3s.Adornee = _0x8n9o0p
    _0x1q2r3s.Parent = _0x2h3i4j
    return _0x1q2r3s
end
local function _0x4t5u6v()
    for _, _0x7w8x9y in pairs(_0x2h3i4j:GetChildren()) do
        _0x7w8x9y:Destroy()
    end
    if not _0x9e0f1g then return end
    local _0x0z1a2b = _0x7e8f9g()
    if not _0x0z1a2b then return end
    for _, _0x3c4d5e in pairs(_0x0z1a2b:GetDescendants()) do
        if _0x3c4d5e:IsA("Model") and _0x8v9w0x(_0x3c4d5e.Name) then
            local _0x6f7g8h = _0x3c4d5e:FindFirstChildOfClass("Humanoid")
            if _0x6f7g8h and _0x6f7g8h.Health > 0 then
                _0x5k6l7m(_0x3c4d5e)
            end
        end
    end
end
local _0x9i0j1k_esp = nil
local function _0x2l3m4n()
    _0x4t5u6v()
    _0x9i0j1k_esp = _0x0z1a2b.Heartbeat:Connect(function()
        if not _0x9e0f1g then return end
        _0x4t5u6v()
    end)
end
local function _0x5o6p7q()
    if _0x9i0j1k_esp then
        _0x9i0j1k_esp:Disconnect()
        _0x9i0j1k_esp = nil
    end
    for _, _0x8r9s0t in pairs(_0x2h3i4j:GetChildren()) do
        _0x8r9s0t:Destroy()
    end
end
_0x1u2v3w:Toggle({
    Title = "ESP (Enemy Highlight)",
    Value = false,
    Callback = function(_0x1u2v3w_val)
        _0x9e0f1g = _0x1u2v3w_val
        if _0x1u2v3w_val then
            _0x2l3m4n()
        else
            _0x5o6p7q()
        end
    end
})
local _0x4x5y6z_esp = false
local _0x7a8b9c_esp = Instance.new("Folder")
_0x7a8b9c_esp.Name = "PlayerESP"
_0x7a8b9c_esp.Parent = game:GetService("CoreGui")
local function _0x0d1e2f()
    for _, _0x3g4h5i in pairs(_0x7a8b9c_esp:GetChildren()) do
        _0x3g4h5i:Destroy()
    end
    if not _0x4x5y6z_esp then return end
    for _, _0x6j7k8l in pairs(_0x7w8x9y:GetPlayers()) do
        if _0x6j7k8l ~= _0x9i0j1k and _0x6j7k8l.Character then
            local _0x9m0n1o = Instance.new("Highlight")
            _0x9m0n1o.Name = "ESP_" .. _0x6j7k8l.Name
            _0x9m0n1o.FillColor = Color3.fromRGB(0, 255, 0)
            _0x9m0n1o.OutlineColor = Color3.fromRGB(255, 255, 255)
            _0x9m0n1o.FillTransparency = 0.5
            _0x9m0n1o.OutlineTransparency = 0
            _0x9m0n1o.Adornee = _0x6j7k8l.Character
            _0x9m0n1o.Parent = _0x7a8b9c_esp
        end
    end
end
local _0x2p3q4r_esp = nil
_0x1u2v3w:Toggle({
    Title = "Player ESP",
    Value = false,
    Callback = function(_0x5s6t7u)
        _0x4x5y6z_esp = _0x5s6t7u
        if _0x5s6t7u then
            _0x0d1e2f()
            _0x2p3q4r_esp = _0x0z1a2b.Heartbeat:Connect(function()
                _0x0d1e2f()
            end)
        else
            if _0x2p3q4r_esp then
                _0x2p3q4r_esp:Disconnect()
                _0x2p3q4r_esp = nil
            end
            for _, _0x8v9w0x in pairs(_0x7a8b9c_esp:GetChildren()) do
                _0x8v9w0x:Destroy()
            end
        end
    end
})
local _0x1y2z3a = false
local _0x4b5c6d = game:GetService("Lighting").Ambient
local _0x7e8f9g_light = game:GetService("Lighting").Brightness
local _0x0h1i2j = game:GetService("Lighting").OutdoorAmbient
_0x1u2v3w:Toggle({
    Title = "Fullbright",
    Value = false,
    Callback = function(_0x3k4l5m)
        _0x1y2z3a = _0x3k4l5m
        local _0x6n7o8p = game:GetService("Lighting")
        if _0x3k4l5m then
            _0x6n7o8p.Ambient = Color3.fromRGB(255, 255, 255)
            _0x6n7o8p.Brightness = 2
            _0x6n7o8p.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
        else
            _0x6n7o8p.Ambient = _0x4b5c6d
            _0x6n7o8p.Brightness = _0x7e8f9g_light
            _0x6n7o8p.OutdoorAmbient = _0x0h1i2jh1i2j
        end
    end
})
_0x1u2v3w:Toggle({
    Title = "No Fog",
    Value = false,
    Callback = function(_0x9q0r1s)
        local _0x2t3u4v = game:GetService("Lighting")
        if _0x9q0r1s then
            _0x2t3u4v.FogEnd = 100000
            _0x2t3u4v.FogStart = 0
        else
            _0x2t3u4v.FogEnd = 1000
            _0x2t3u4v.FogStart = 0
        end
    end
})
local _0x5w6x7y = 70
local _0x8z9a0b_fov = nil
_0x1u2v3w:Slider({
    Title = "FOV",
    Value = {Min = 30, Max = 120, Default = 70},
    Callback = function(_0x1c2d3e)
        _0x5w6x7y = _0x1c2d3e
        if _0x8z9a0b_fov then
            _0x8z9a0b_fov:Disconnect()
        end
        _0x8z9a0b_fov = _0x0z1a2b.RenderStepped:Connect(function()
            _0x6f7g8h.CurrentCamera.FieldOfView = _0x5w6x7y
        end)
    end
})
local _0x4f5g6h_hat = false
local _0x7i8j9k_hat = nil
local _0x0l1m2n_hat = nil
_0x1u2v3w:Toggle({
    Title = "Rainbow Asian Hat",
    Value = false,
    Callback = function(_0x3o4p5q)
        _0x4f5g6h_hat = _0x3o4p5q
        if _0x3o4p5q then
            local _0x6r7s8t = _0x9i0j1k.Character
            if _0x6r7s8t and _0x6r7s8t:FindFirstChild("Head") then
                _0x7i8j9k_hat = Instance.new("Part")
                _0x7i8j9k_hat.Name = "RainbowHat"
                _0x7i8j9k_hat.Size = Vector3.new(3, 0.1, 3)
                _0x7i8j9k_hat.CanCollide = false
                _0x7i8j9k_hat.Massless = true
                _0x7i8j9k_hat.Material = Enum.Material.Neon
                _0x7i8j9k_hat.Parent = _0x6r7s8t
                local _0x9u0v1w = Instance.new("SpecialMesh")
                _0x9u0v1w.MeshType = Enum.MeshType.FileMesh
                _0x9u0v1w.MeshId = "rbxassetid://1028713"
                _0x9u0v1w.Scale = Vector3.new(1.2, 0.8, 1.2)
                _0x9u0v1w.Parent = _0x7i8j9k_hat
                local _0x2x3y4z = Instance.new("Weld")
                _0x2x3y4z.Part0 = _0x6r7s8t.Head
                _0x2x3y4z.Part1 = _0x7i8j9k_hat
                _0x2x3y4z.C0 = CFrame.new(0, 0.5, 0)
                _0x2x3y4z.Parent = _0x7i8j9k_hat
                local _0x5a6b7c = 0
                _0x0l1m2n_hat = _0x0z1a2b.Heartbeat:Connect(function()
                    if _0x7i8j9k_hat then
                        _0x5a6b7c = (_0x5a6b7c + 0.01) % 1
                        _0x7i8j9k_hat.Color = Color3.fromHSV(_0x5a6b7c, 1, 1)
                    end
                end)
            end
        else
            if _0x0l1m2n_hat then
                _0x0l1m2n_hat:Disconnect()
                _0x0l1m2n_hat = nil
            end
            if _0x7i8j9k_hat then
                _0x7i8j9k_hat:Destroy()
                _0x7i8j9k_hat = nil
            end
        end
    end
})
local _0x8d9e0f_heli = false
local _0x1g2h3i_heli = nil
local function _0x4j5k6l()
    _0x1g2h3i_heli = _0x0z1a2b.Heartbeat:Connect(function()
        if not _0x8d9e0f_heli then return end
        pcall(function()
            _0x3c4d5e:WaitForChild("SkipHelicopter"):FireServer()
        end)
    end)
end
local function _0x7m8n9o()
    if _0x1g2h3i_heli then
        _0x1g2h3i_heli:Disconnect()
        _0x1g2h3i_heli = nil
    end
end
_0x4x5y6z:Toggle({
    Title = "Auto Skip Helicopter",
    Value = false,
    Callback = function(_0x0p1q2r)
        _0x8d9e0f_heli = _0x0p1q2r
        if _0x0p1q2r then
            _0x4j5k6l()
        else
            _0x7m8n9o()
        end
    end
})
_0x4x5y6z:Section({
    Title = "by kumkki.",
    TextSize = 12,
})
