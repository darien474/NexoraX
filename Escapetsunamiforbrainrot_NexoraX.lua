local WindUI
local success, result = pcall(function()
    return loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua", true))()
end)

if success then
    WindUI = result
    print("WindUI loaded successfully")
else
    warn("Failed to load WindUI:", result)
    return
end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")

local IsMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
local IsPC = not IsMobile

local BrainrotDatabase = {
    Common = {
        {Name = "Burbaloni Luliloli", Income = "$10/s", BaseIncome = 10, Location = "Common Zone"},
        {Name = "Chimpanzini Bananini", Income = "$15/s", BaseIncome = 15, Location = "Common Zone"},
        {Name = "Ballerina Cappuccina", Income = "$20/s", BaseIncome = 20, Location = "Common Zone"},
        {Name = "Chef Crabracadabra", Income = "$25/s", BaseIncome = 25, Location = "Common Zone"},
    },
    
    Uncommon = {
        {Name = "Lionel Cactuseli", Income = "$50/s", BaseIncome = 50, Location = "Uncommon Zone"},
        {Name = "Glorbo Fruttodrillo", Income = "$65/s", BaseIncome = 65, Location = "Uncommon Zone"},
        {Name = "Strawberrilli Flamengilli", Income = "$80/s", BaseIncome = 80, Location = "Uncommon Zone"},
    },
    
    Rare = {
        {Name = "Pandaccini Bananini", Income = "$150/s", BaseIncome = 150, Location = "Rare Zone"},
        {Name = "Sigma Boy", Income = "$175/s", BaseIncome = 175, Location = "Rare Zone"},
        {Name = "Pi Pi Watermelon", Income = "$200/s", BaseIncome = 200, Location = "Rare Zone"},
        {Name = "Blueberrinni Octopussini", Income = "$225/s", BaseIncome = 225, Location = "Rare Zone"},
    },
    
    Epic = {
        {Name = "Cocosini Mama", Income = "$290/s", BaseIncome = 290, Location = "Epic Zone"},
        {Name = "Guesto Angelic", Income = "$350/s", BaseIncome = 350, Location = "Epic Zone"},
        {Name = "Frigo Camelo", Income = "$475/s", BaseIncome = 475, Location = "Epic Zone"},
        {Name = "Orangutini Ananasini", Income = "$550/s", BaseIncome = 550, Location = "Epic Zone"},
        {Name = "Rhino Toasterino", Income = "$625/s", BaseIncome = 625, Location = "Epic Zone"},
        {Name = "Bombardiro Crocodilo", Income = "$700/s", BaseIncome = 700, Location = "Epic Zone"},
    },
    
    Legendary = {
        {Name = "Spioniro Golubiro", Income = "$1.5K/s", BaseIncome = 1500, Location = "Legendary Zone"},
        {Name = "Bombombini Gusini", Income = "$1.7K/s", BaseIncome = 1700, Location = "Legendary Zone"},
        {Name = "Zibra Zubra Zibralini", Income = "$1.9K/s", BaseIncome = 1900, Location = "Legendary Zone"},
        {Name = "Tigrilini Watermelini", Income = "$2.1K/s", BaseIncome = 2100, Location = "Legendary Zone"},
        {Name = "Cavallo Virtuoso", Income = "$2.29K/s", BaseIncome = 2290, Location = "Legendary Zone"},
        {Name = "Gorillo Watermelondrillo", Income = "$2.6K/s", BaseIncome = 2600, Location = "Legendary Zone"},
        {Name = "Avocadorilla", Income = "$2.9K/s", BaseIncome = 2900, Location = "Legendary Zone"},
        {Name = "Eaglucci Cocosucci", Income = "$3.2K/s", BaseIncome = 3200, Location = "Legendary Zone"},
        {Name = "Ganganzelli Trulala", Income = "$3.5K/s", BaseIncome = 3500, Location = "Legendary Zone"},
    },
    
    Mythical = {
        {Name = "Cocofanto Elefanto", Income = "$4K/s", BaseIncome = 4000, Location = "Mythical Zone"},
        {Name = "Giraffa Celeste", Income = "$4.5K/s", BaseIncome = 4500, Location = "Mythical Zone"},
        {Name = "Tralalero Tralala", Income = "$4.7K/s", BaseIncome = 4700, Location = "Mythical Zone"},
        {Name = "Los Crocodillitos", Income = "$5K/s", BaseIncome = 5000, Location = "Mythical Zone"},
        {Name = "Tigroligre Frutonni", Income = "$6K/s", BaseIncome = 6000, Location = "Mythical Zone"},
        {Name = "Udin Din Din Dun", Income = "$7K/s", BaseIncome = 7000, Location = "Mythical Zone"},
        {Name = "Trenostruzzo Turbo 3000", Income = "$8K/s", BaseIncome = 8000, Location = "Mythical Zone"},
        {Name = "Trippi Troppi Troppa Trippa", Income = "$9K/s", BaseIncome = 9000, Location = "Mythical Zone"},
        {Name = "Orcalero Orcala", Income = "$10K/s", BaseIncome = 10000, Location = "Mythical Zone"},
        {Name = "Piccione Macchina", Income = "$11K/s", BaseIncome = 11000, Location = "Mythical Zone"},
        {Name = "Tukanno Bananno", Income = "$13K/s", BaseIncome = 13000, Location = "Mythical Zone"},
        {Name = "Ballerino Lololo", Income = "$15K/s", BaseIncome = 15000, Location = "Mythical Zone"},
    },
    
    Cosmic = {
        {Name = "Cosmic Tralalero", Income = "$18K/s", BaseIncome = 18000, Location = "Cosmic Zone"},
        {Name = "Cosmic Crocodilo", Income = "$19K/s", BaseIncome = 19000, Location = "Cosmic Zone"},
        {Name = "Cosmic Bananini", Income = "$21K/s", BaseIncome = 21000, Location = "Cosmic Zone"},
        {Name = "Cosmic Elephant", Income = "$25K/s", BaseIncome = 25000, Location = "Cosmic Zone"},
    },
    
    Secret = {
        {Name = "Secret Burbaloni", Income = "$30K/s", BaseIncome = 30000, Location = "Secret Zone"},
        {Name = "Secret Tralala", Income = "$35K/s", BaseIncome = 35000, Location = "Secret Zone"},
        {Name = "Secret Crocodilo", Income = "$40K/s", BaseIncome = 40000, Location = "Secret Zone"},
        {Name = "67", Income = "$67K/s", BaseIncome = 67000, Location = "Secret Zone (Special)"},
    },
    
    Celestial = {
        {Name = "Job Job Job Sahur", Income = "$7.5M/s", BaseIncome = 7500000, Location = "Celestial Zone"},
        {Name = "Dug Dug Dug", Income = "$8M/s", BaseIncome = 8000000, Location = "Celestial Zone"},
        {Name = "Bisonte Giuppitere", Income = "$8.5M/s", BaseIncome = 8500000, Location = "Celestial Zone"},
        {Name = "Alessio", Income = "$9M/s", BaseIncome = 9000000, Location = "Celestial Zone"},
        {Name = "Esok Sekolah", Income = "$9.5M/s", BaseIncome = 9500000, Location = "Celestial Zone"},
        {Name = "Polpo Semaforini", Income = "$10.75M/s", BaseIncome = 10750000, Location = "Celestial Zone"},
        {Name = "La Malita", Income = "$12M/s", BaseIncome = 12000000, Location = "Celestial Zone"},
        {Name = "Diamantusa", Income = "$12.25M/s", BaseIncome = 12250000, Location = "Celestial Zone"},
        {Name = "Avocadini Antilopini", Income = "$13M/s", BaseIncome = 13000000, Location = "Celestial Zone"},
        {Name = "Los Orcaleritos", Income = "$14M/s", BaseIncome = 14000000, Location = "Celestial Zone"},
        {Name = "Capuccino Policia", Income = "$14.5M/s", BaseIncome = 14500000, Location = "Celestial Zone"},
        {Name = "Money Elephant", Income = "$14.75M/s", BaseIncome = 14750000, Location = "Celestial Zone"},
        {Name = "Zung Zung Zung Lazur", Income = "$14.75M/s", BaseIncome = 14750000, Location = "Celestial Zone"},
        {Name = "Cioccolatone Draghettone", Income = "$15M/s", BaseIncome = 15000000, Location = "Celestial Zone"},
        {Name = "Rattini Machini", Income = "$15.25M/s", BaseIncome = 15250000, Location = "Celestial Zone"},
        {Name = "Ketupastro Infernetto", Income = "$15.5M/s", BaseIncome = 15500000, Location = "Celestial Zone"},
    },
    
    Divine = {
        {Name = "Bulbito Bandito Traktorito", Income = "$30M/s", BaseIncome = 30000000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Burgerini Bearini", Income = "$35M/s", BaseIncome = 35000000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Martino Gravitino", Income = "$45M/s", BaseIncome = 45000000, Location = "Celestial Zone (Frenzy/Spin)"},
        {Name = "Grappellino D'Oro", Income = "$48.5M/s", BaseIncome = 48500000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Strawberry Elephant", Income = "$50M/s", BaseIncome = 50000000, Location = "Celestial Zone (Frenzy) - RAREST"},
        {Name = "Din Din Vaultero", Income = "$55M/s", BaseIncome = 55000000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Glacierello Infernetti", Income = "$60M/s", BaseIncome = 60000000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Explodini Cataclismi", Income = "$65M/s", BaseIncome = 65000000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Biscotti Macarotti", Income = "$75M/s", BaseIncome = 75000000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Pastapot Infernetto", Income = "$82.5M/s", BaseIncome = 82500000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Galactio Fantasma", Income = "$88.8M/s", BaseIncome = 88800000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Rubicheeto Cubini", Income = "$88.8M/s", BaseIncome = 88800000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Freezeti Cobretti", Income = "$90M/s", BaseIncome = 90000000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Cupitron Consoletron", Income = "$92.5M/s", BaseIncome = 92500000, Location = "Celestial Zone (Frenzy)"},
        {Name = "Draculini Meowlini", Income = "$95M/s", BaseIncome = 95000000, Location = "Celestial Zone (Frenzy)"},
    },
    
    Infinity = {
        {Name = "Noobini Infeeny", Income = "$250M/s", BaseIncome = 250000000, Location = "Infinity Lucky Block"},
        {Name = "Anububu", Income = "$375M/s", BaseIncome = 375000000, Location = "Infinity Lucky Block"},
        {Name = "Meta Technetta", Income = "$625M/s", BaseIncome = 625000000, Location = "Infinity Lucky Block"},
        {Name = "Magmew", Income = "???/s", BaseIncome = 1000000000, Location = "Infinity Lucky Block"},
    },
    
    Special = {
        {Name = "Caffe Trinity", Income = "$2M/s", BaseIncome = 2000000, Location = "UNOBTAINABLE (Trade Only)"},
        {Name = "Radioactive Bulbito", Income = "Varies", BaseIncome = 0, Location = "Radioactive Event"},
        {Name = "Admin Exclusive", Income = "Infinite", BaseIncome = 999999999, Location = "Admin Abuse Only"},
    }
}

local RarityColors = {
    Common = Color3.fromRGB(169, 169, 169),
    Uncommon = Color3.fromRGB(0, 255, 0),
    Rare = Color3.fromRGB(0, 100, 255),
    Epic = Color3.fromRGB(128, 0, 128),
    Legendary = Color3.fromRGB(255, 215, 0),
    Mythical = Color3.fromRGB(255, 0, 0),
    Cosmic = Color3.fromRGB(0, 255, 255),
    Secret = Color3.fromRGB(255, 0, 255),
    Celestial = Color3.fromRGB(255, 255, 0),
    Divine = Color3.fromRGB(255, 140, 0),
    Infinity = Color3.fromRGB(0, 0, 0),
    Special = Color3.fromRGB(255, 255, 255)
}

local autoCollectEnabled = false
local autoTeleportToRare = false
local waveDetectionEnabled = false
local autoSafeZone = false
local espEnabled = false
local brainrotESP = false
local showAllBrainrots = false

local scannedBrainrots = {}
local selectedTeleportTarget = nil
local autoCollectDistance = 50
local rareThreshold = 1000

local isTeleporting = false
local teleportSpeed = 100
local lastWaveWarning = 0

local espObjects = {}
local brainrotESPObjects = {}

local mobileAutoCollectButton = nil

local function notify(title, desc, duration)
    WindUI:Notify({
        Title = title,
        Desc = desc,
        Icon = "info",
        Duration = duration or 3
    })
end

local function getCharacter()
    Character = LocalPlayer.Character
    if Character then
        HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        Humanoid = Character:FindFirstChild("Humanoid")
    end
    return Character, HumanoidRootPart, Humanoid
end

local function safeTeleport(targetCFrame, speed)
    if isTeleporting then return end
    isTeleporting = true
    
    local char, hrp, hum = getCharacter()
    if not hrp then 
        isTeleporting = false
        return 
    end
    
    local distance = (hrp.Position - targetCFrame.Position).Magnitude
    local duration = distance / (speed or teleportSpeed)
    
    local tweenInfo = TweenInfo.new(
        math.min(duration, 5),
        Enum.EasingStyle.Linear
    )
    
    local tween = TweenService:Create(hrp, tweenInfo, {
        CFrame = targetCFrame
    })
    
    tween.Completed:Connect(function()
        isTeleporting = false
    end)
    
    tween:Play()
    
    task.delay(6, function()
        isTeleporting = false
    end)
end

local function instantTeleport(targetCFrame)
    local char, hrp, hum = getCharacter()
    if hrp then
        hrp.CFrame = targetCFrame
    end
end

local function scanForBrainrots()
    scannedBrainrots = {}
    local brainrotFolder = Workspace:FindFirstChild("Brainrots") or Workspace:FindFirstChild("Spawns")
    
    if not brainrotFolder then
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj:IsA("Model") and obj:GetAttribute("Brainrot") or obj.Name:match("Brainrot") or obj.Name:match("Burbaloni") or obj.Name:match("Tralala") then
                local rarity = obj:GetAttribute("Rarity") or "Unknown"
                local income = obj:GetAttribute("Income") or 0
                local name = obj.Name
                
                table.insert(scannedBrainrots, {
                    Object = obj,
                    Name = name,
                    Rarity = rarity,
                    Income = income,
                    Position = obj:GetPivot().Position,
                    CFrame = obj:GetPivot()
                })
            end
        end
    else
        for _, brainrot in ipairs(brainrotFolder:GetChildren()) do
            if brainrot:IsA("Model") or brainrot:IsA("Part") then
                local rarity = brainrot:GetAttribute("Rarity") or "Unknown"
                local income = brainrot:GetAttribute("Income") or 0
                local name = brainrot.Name
                
                table.insert(scannedBrainrots, {
                    Object = brainrot,
                    Name = name,
                    Rarity = rarity,
                    Income = income,
                    Position = brainrot:GetPivot().Position,
                    CFrame = brainrot:GetPivot()
                })
            end
        end
    end
    
    for _, zone in ipairs(Workspace:GetDescendants()) do
        if zone.Name:match("Zone") or zone.Name:match("Spawn") then
            if zone:IsA("BasePart") or zone:IsA("Model") then
                local pos = zone:IsA("BasePart") and zone.Position or zone:GetPivot().Position
                table.insert(scannedBrainrots, {
                    Object = zone,
                    Name = zone.Name .. " (Zone)",
                    Rarity = "Location",
                    Income = 0,
                    Position = pos,
                    CFrame = zone:IsA("BasePart") and zone.CFrame or zone:GetPivot(),
                    IsZone = true
                })
            end
        end
    end
    
    return #scannedBrainrots
end

local function getAllBrainrotNames()
    local names = {}
    for rarity, list in pairs(BrainrotDatabase) do
        for _, brainrot in ipairs(list) do
            table.insert(names, brainrot.Name .. " [" .. rarity .. "]")
        end
    end
    table.sort(names)
    return names
end

local function findBrainrotByName(name)
    for rarity, list in pairs(BrainrotDatabase) do
        for _, brainrot in ipairs(list) do
            if brainrot.Name == name then
                return brainrot, rarity
            end
        end
    end
    return nil, nil
end

local function detectWave()
    for _, obj in ipairs(Workspace:GetChildren()) do
        if obj.Name:lower():match("wave") or obj.Name:lower():match("tsunami") then
            if obj:IsA("BasePart") then
                local distance = (obj.Position - HumanoidRootPart.Position).Magnitude
                if distance < 500 then
                    return true, obj, distance
                end
            end
        end
    end
    
    local gui = LocalPlayer:FindFirstChild("PlayerGui")
    if gui then
        for _, g in ipairs(gui:GetDescendants()) do
            if g:IsA("TextLabel") and (g.Text:lower():match("wave") or g.Text:lower():match("tsunami")) then
                return true, nil, 0
            end
        end
    end
    
    return false, nil, math.huge
end

local function findSafeZones()
    local safeZones = {}
    
    for _, obj in ipairs(Workspace:GetDescendants()) do
        if obj.Name:lower():match("safe") or obj.Name:lower():match("trench") or obj.Name:lower():match("hide") or obj.Name:lower():match("vip") then
            if obj:IsA("BasePart") then
                table.insert(safeZones, {
                    Object = obj,
                    Position = obj.Position,
                    CFrame = obj.CFrame,
                    Distance = (obj.Position - HumanoidRootPart.Position).Magnitude
                })
            end
        end
    end
    
    table.sort(safeZones, function(a, b) return a.Distance < b.Distance end)
    
    return safeZones
end

local function getNearestSafeZone()
    local safeZones = findSafeZones()
    if #safeZones > 0 then
        return safeZones[1]
    end
    return nil
end

local function collectBrainrot(brainrotObj)
    if not brainrotObj then return end
    
    local char, hrp, hum = getCharacter()
    if not hrp then return end
    
    local targetPos = brainrotObj:GetPivot().Position
    local targetCFrame = CFrame.new(targetPos + Vector3.new(0, 5, 0))
    
    safeTeleport(targetCFrame, teleportSpeed)
    
    task.wait(0.5)
    
    for _, prompt in ipairs(brainrotObj:GetDescendants()) do
        if prompt:IsA("ProximityPrompt") then
            fireproximityprompt(prompt)
        end
    end
    
    local touchPart = brainrotObj:FindFirstChildWhichIsA("BasePart")
    if touchPart then
        firetouchinterest(hrp, touchPart, 0)
        task.wait(0.1)
        firetouchinterest(hrp, touchPart, 1)
    end
end

local autoCollectConnection = nil

local function startAutoCollect()
    if autoCollectConnection then return end
    
    autoCollectConnection = RunService.Heartbeat:Connect(function()
        if not autoCollectEnabled then return end
        
        local char, hrp, hum = getCharacter()
        if not hrp then return end
        
        if waveDetectionEnabled then
            local waveDetected, waveObj, waveDist = detectWave()
            if waveDetected and waveDist < 200 then
                if autoSafeZone then
                    local safeZone = getNearestSafeZone()
                    if safeZone and not isTeleporting then
                        notify("Wave Detected!", "Teleporting to safe zone...", 2)
                        instantTeleport(safeZone.CFrame + Vector3.new(0, 10, 0))
                    end
                end
                return
            end
        end
        
        local nearest = nil
        local nearestDist = autoCollectDistance
        
        for _, brainrot in ipairs(scannedBrainrots) do
            if brainrot.Object and brainrot.Object.Parent then
                local dist = (brainrot.Position - hrp.Position).Magnitude
                if dist < nearestDist then
                    if autoTeleportToRare and brainrot.Income < rareThreshold then
                        continue
                    end
                    nearest = brainrot
                    nearestDist = dist
                end
            end
        end
        
        if nearest and not isTeleporting then
            collectBrainrot(nearest.Object)
        end
    end)
end

local function stopAutoCollect()
    if autoCollectConnection then
        autoCollectConnection:Disconnect()
        autoCollectConnection = nil
    end
end

local function createESP(object, text, color)
    if not object then return end
    
    local esp = Drawing.new("Text")
    esp.Text = text
    esp.Color = color or Color3.new(1, 1, 1)
    esp.Size = 14
    esp.Center = true
    esp.Outline = true
    esp.Visible = true
    
    return esp
end

local function updateESP()
    if not espEnabled then return end
    
    local char, hrp, hum = getCharacter()
    if not hrp then return end
    
    for obj, esp in pairs(espObjects) do
        if not obj or not obj.Parent then
            esp:Remove()
            espObjects[obj] = nil
        end
    end
    
    if brainrotESP then
        for _, brainrot in ipairs(scannedBrainrots) do
            if brainrot.Object and brainrot.Object.Parent then
                if not brainrotESPObjects[brainrot.Object] then
                    local rarityColor = RarityColors[brainrot.Rarity] or Color3.new(1, 1, 1)
                    brainrotESPObjects[brainrot.Object] = createESP(
                        brainrot.Object, 
                        brainrot.Name .. "\n" .. brainrot.Rarity .. "\n" .. tostring(brainrot.Income) .. "/s",
                        rarityColor
                    )
                end
                
                local esp = brainrotESPObjects[brainrot.Object]
                if esp then
                    local pos, onScreen = Workspace.CurrentCamera:WorldToViewportPoint(brainrot.Position)
                    if onScreen then
                        esp.Position = Vector2.new(pos.X, pos.Y)
                        esp.Visible = true
                    else
                        esp.Visible = false
                    end
                end
            else
                if brainrotESPObjects[brainrot.Object] then
                    brainrotESPObjects[brainrot.Object]:Remove()
                    brainrotESPObjects[brainrot.Object] = nil
                end
            end
        end
    end
end

local espConnection = nil

local function startESP()
    if espConnection then return end
    espConnection = RunService.RenderStepped:Connect(updateESP)
end

local function stopESP()
    if espConnection then
        espConnection:Disconnect()
        espConnection = nil
    end
    
    for _, esp in pairs(espObjects) do
        esp:Remove()
    end
    espObjects = {}
    
    for _, esp in pairs(brainrotESPObjects) do
        esp:Remove()
    end
    brainrotESPObjects = {}
end

local function createMobileButton()
    if not IsMobile then return end
    if mobileAutoCollectButton then return end
    
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "NexoraXMobile"
    screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    
    mobileAutoCollectButton = Instance.new("TextButton")
    mobileAutoCollectButton.Name = "AutoCollectBtn"
    mobileAutoCollectButton.Size = UDim2.new(0, 100, 0, 100)
    mobileAutoCollectButton.Position = UDim2.new(0.8, 0, 0.7, 0)
    mobileAutoCollectButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
    mobileAutoCollectButton.BackgroundTransparency = 0.2
    mobileAutoCollectButton.Text = "AUTO\nCOLLECT"
    mobileAutoCollectButton.TextColor3 = Color3.new(1, 1, 1)
    mobileAutoCollectButton.TextSize = 18
    mobileAutoCollectButton.Font = Enum.Font.GothamBold
    mobileAutoCollectButton.BorderSizePixel = 0
    mobileAutoCollectButton.Parent = screenGui
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = mobileAutoCollectButton
    
    mobileAutoCollectButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            autoCollectEnabled = not autoCollectEnabled
            mobileAutoCollectButton.BackgroundColor3 = autoCollectEnabled and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(0, 150, 255)
            notify("Auto Collect", autoCollectEnabled and "Enabled" or "Disabled", 2)
            
            if autoCollectEnabled then
                scanForBrainrots()
                startAutoCollect()
            else
                stopAutoCollect()
            end
        end
    end)
    
    local dragging = false
    local dragStart = nil
    local startPos = nil
    
    mobileAutoCollectButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = mobileAutoCollectButton.Position
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.Touch then
            local delta = input.Position - dragStart
            mobileAutoCollectButton.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
end

local Window = WindUI:CreateWindow({
    Title = "NexoraX | Escape Tsunami",
    Author = "by DARIEN:> & conzorx  ," 
    Folder = "NexoraX_Tsunami",
    Size = UDim2.fromOffset(750, 600),
    OpenButton = {
        Title = "Open NexoraX",
        Enabled = true,
        Draggable = true,
        OnlyMobile = false,
    }
})

Window:Tag({
    Title = IsMobile and "v1.0 | Mobile" or "v1.0 | PC",
    Icon = "waves",
    Color = Color3.fromHex("#00a8ff")
})

local ScannerSection = Window:Section({
    Title = "Brainrot Scanner",
    Icon = "scan"
})

local ScannerTab = ScannerSection:Tab({
    Title = "Scanner",
    Icon = "radar"
})

ScannerTab:Paragraph({
    Title = "Scanner Status",
    Desc = "Click 'Scan Map' to find all available brainrots in the server",
})

ScannerTab:Button({
    Title = "Scan Map",
    Icon = "search",
    Callback = function()
        local count = scanForBrainrots()
        notify("Scan Complete", "Found " .. count .. " brainrots/locations", 3)
    end
})

ScannerTab:Space()

ScannerTab:Toggle({
    Flag = "BrainrotESP",
    Title = "Brainrot ESP",
    Desc = "Show ESP for all scanned brainrots",
    Default = false,
    Callback = function(state)
        brainrotESP = state
        espEnabled = state
        if state then
            if #scannedBrainrots == 0 then
                scanForBrainrots()
            end
            startESP()
        else
            stopESP()
        end
    end
})

ScannerTab:Space()

ScannerTab:Button({
    Title = "Clear Scanned",
    Icon = "trash-2",
    Color = Color3.fromHex("#ff305d"),
    Callback = function()
        scannedBrainrots = {}
        stopESP()
        notify("Cleared", "Scanned brainrots cleared", 2)
    end
})

local DatabaseTab = ScannerSection:Tab({
    Title = "Database",
    Icon = "database"
})

DatabaseTab:Paragraph({
    Title = "Brainrot Database",
    Desc = "All known brainrots with rarities and income values",
})

local allNames = getAllBrainrotNames()
DatabaseTab:Dropdown({
    Flag = "BrainrotDatabase",
    Title = "View Brainrot Info",
    Desc = "Select a brainrot to see details",
    Values = allNames,
    Callback = function(value)
        local name = value:gsub(" %[%w+%]", "")
        local data, rarity = findBrainrotByName(name)
        if data then
            Window:Dialog({
                Title = data.Name,
                Content = "Rarity: " .. rarity .. "\nIncome: " .. data.Income .. "\nLocation: " .. data.Location .. "\nBase Income: " .. tostring(data.BaseIncome) .. "/s",
                Buttons = {
                    {
                        Title = "Close",
                        Callback = function() end
                    }
                }
            })
        end
    end
})

local statsText = ""
for rarity, list in pairs(BrainrotDatabase) do
    statsText = statsText .. rarity .. ": " .. #list .. " | "
end

DatabaseTab:Space()
DatabaseTab:Paragraph({
    Title = "Rarity Counts",
    Desc = statsText
})

local TeleportSection = Window:Section({
    Title = "Teleport",
    Icon = "map-pin"
})

local TeleportTab = TeleportSection:Tab({
    Title = "Teleporter",
    Icon = "navigation"
})

TeleportTab:Paragraph({
    Title = "Safe Teleport",
    Desc = "Teleport to scanned brainrots or safe zones",
})

TeleportTab:Dropdown({
    Flag = "TeleportTarget",
    Title = "Teleport Target",
    Desc = "Select from scanned brainrots",
    Values = {"None"},
    Callback = function(value)
        if value ~= "None" then
            for _, brainrot in ipairs(scannedBrainrots) do
                if brainrot.Name == value then
                    selectedTeleportTarget = brainrot
                    break
                end
            end
        end
    end
})

local originalScan = scanForBrainrots
scanForBrainrots = function()
    local count = originalScan()
    
    local names = {"None"}
    for _, b in ipairs(scannedBrainrots) do
        table.insert(names, b.Name)
    end
    
    pcall(function()
        local dropdown = TeleportTab:FindFirstChild("TeleportTarget")
        if dropdown then
            dropdown.Values = names
        end
    end)
    
    return count
end

TeleportTab:Space()

TeleportTab:Button({
    Title = "Teleport to Selected",
    Icon = "zap",
    Callback = function()
        if selectedTeleportTarget and selectedTeleportTarget.CFrame then
            safeTeleport(selectedTeleportTarget.CFrame + Vector3.new(0, 5, 0), teleportSpeed)
            notify("Teleporting", "Moving to " .. selectedTeleportTarget.Name, 2)
        else
            notify("Error", "No target selected", 2)
        end
    end
})

TeleportTab:Space()

TeleportTab:Button({
    Title = "Teleport to Safe Zone",
    Icon = "shield",
    Callback = function()
        local safeZone = getNearestSafeZone()
        if safeZone then
            instantTeleport(safeZone.CFrame + Vector3.new(0, 10, 0))
            notify("Safe!", "Teleported to nearest safe zone", 2)
        else
            notify("Error", "No safe zones found", 2)
        end
    end
})

TeleportTab:Space()

TeleportTab:Button({
    Title = "Teleport to Base",
    Icon = "home",
    Callback = function()
        for _, obj in ipairs(Workspace:GetDescendants()) do
            if obj.Name:lower():match("base") or obj.Name:lower():match("spawn") then
                if obj:IsA("BasePart") then
                    instantTeleport(obj.CFrame + Vector3.new(0, 10, 0))
                    notify("Home", "Teleported to base", 2)
                    return
                end
            end
        end
        notify("Error", "Base not found", 2)
    end
})

local QuickTeleportTab = TeleportSection:Tab({
    Title = "Quick Zones",
    Icon = "compass"
})

local zones = {
    "Common Zone",
    "Uncommon Zone", 
    "Rare Zone",
    "Epic Zone",
    "Legendary Zone",
    "Mythical Zone",
    "Cosmic Zone",
    "Secret Zone",
    "Celestial Zone"
}

for _, zone in ipairs(zones) do
    QuickTeleportTab:Button({
        Title = "TP to " .. zone,
        Icon = "arrow-right",
        Callback = function()
            for _, obj in ipairs(Workspace:GetDescendants()) do
                if obj.Name:match(zone:gsub(" Zone", "")) or obj.Name:match(zone) then
                    if obj:IsA("BasePart") or obj:IsA("Model") then
                        local cf = obj:IsA("BasePart") and obj.CFrame or obj:GetPivot()
                        safeTeleport(cf + Vector3.new(0, 20, 0), teleportSpeed)
                        notify("Teleport", "Moving to " .. zone, 2)
                        return
                    end
                end
            end
            notify("Error", zone .. " not found", 2)
        end
    })
    QuickTeleportTab:Space()
end

local FarmSection = Window:Section({
    Title = "Auto Farm",
    Icon = "bot"
})

local FarmTab = FarmSection:Tab({
    Title = "Auto Collect",
    Icon = "package"
})

FarmTab:Toggle({
    Flag = "AutoCollect",
    Title = "Auto Collect Brainrots",
    Desc = "Automatically collect nearby brainrots",
    Default = false,
    Callback = function(state)
        autoCollectEnabled = state
        if state then
            scanForBrainrots()
            startAutoCollect()
            notify("Auto Collect", "Started collecting brainrots", 2)
        else
            stopAutoCollect()
            notify("Auto Collect", "Stopped", 2)
        end
    end
})

FarmTab:Space()

FarmTab:Toggle({
    Flag = "AutoTeleportRare",
    Title = "Only Rare+",
    Desc = "Only auto-collect rare brainrots (1000+ income)",
    Default = false,
    Callback = function(state)
        autoTeleportToRare = state
        rareThreshold = state and 1000 or 0
    end
})

FarmTab:Space()

FarmTab:Slider({
    Flag = "CollectDistance",
    Title = "Collection Distance",
    Desc = "How far to search for brainrots",
    Step = 10,
    Value = {
        Min = 10,
        Max = 500,
        Default = 50,
    },
    Callback = function(value)
        autoCollectDistance = value
    end
})

FarmTab:Space()

FarmTab:Slider({
    Flag = "TeleportSpeed",
    Title = "Teleport Speed",
    Desc = "Speed of teleportation (studs/sec)",
    Step = 10,
    Value = {
        Min = 50,
        Max = 500,
        Default = 100,
    },
    Callback = function(value)
        teleportSpeed = value
    end
})

local WaveTab = FarmSection:Tab({
    Title = "Wave Safety",
    Icon = "alert-triangle"
})

WaveTab:Toggle({
    Flag = "WaveDetection",
    Title = "Wave Detection",
    Desc = "Detect incoming tsunamis",
    Default = false,
    Callback = function(state)
        waveDetectionEnabled = state
    end
})

WaveTab:Space()

WaveTab:Toggle({
    Flag = "AutoSafeZone",
    Title = "Auto Safe Zone",
    Desc = "Auto teleport to safe zone when wave detected",
    Default = false,
    Callback = function(state)
        autoSafeZone = state
    end
})

WaveTab:Space()

WaveTab:Button({
    Title = "Test Wave Detection",
    Icon = "activity",
    Callback = function()
        local detected, obj, dist = detectWave()
        if detected then
            notify("Wave Status", "Wave detected! Distance: " .. math.floor(dist) .. " studs", 3)
        else
            notify("Wave Status", "No waves detected", 2)
        end
    end
})

local InfoSection = Window:Section({
    Title = "Game Info",
    Icon = "info"
})

local InfoTab = InfoSection:Tab({
    Title = "About",
    Icon = "help-circle"
})

InfoTab:Paragraph({
    Title = "Escape Tsunami for Brainrot",
    Desc = "Collect brainrots, survive waves, get rich!\n\n11 Rarities: Common → Infinity\nMax Level: 250\nMax Rebirth: 27\nMax Carry: 7",
})

InfoTab:Space()

InfoTab:Section({
    Title = "Rarity Guide",
    TextSize = 16,
    FontWeight = Enum.FontWeight.SemiBold,
})

local rarityGuide = [[
Common - Near base, $10-25/s
Uncommon - Slight distance, $50-80/s
Rare - Medium distance, $150-225/s
Epic - Far distance, $290-700/s
Legendary - Very far, $1.5K-5K/s
Mythical - Extreme distance, $4K-25K/s
Cosmic - End of map, $18K-25K/s
Secret - Hidden areas, $30K-67K/s
Celestial - Spawns every 10min, $7.5M-15.5M/s
Divine - Frenzy events only, $30M-95M/s
Infinity - Lucky Block only, $250M+/s]]

InfoTab:Paragraph({
    Title = "",
    Desc = rarityGuide,
})

local SettingsSection = Window:Section({
    Title = "Settings",
    Icon = "cog"
})

local SettingsTab = SettingsSection:Tab({
    Title = "Config",
    Icon = "save"
})

local ConfigManager = Window.ConfigManager
local ConfigName = "tsunami_default"

SettingsTab:Input({
    Title = "Config Name",
    Icon = "file-cog",
    Callback = function(value)
        ConfigName = value
    end
})

SettingsTab:Space()

SettingsTab:Button({
    Title = "Save Config",
    Icon = "save",
    Callback = function()
        Window.CurrentConfig = ConfigManager:CreateConfig(ConfigName)
        if Window.CurrentConfig:Save() then
            notify("Saved", "Config saved successfully", 2)
        end
    end
})

SettingsTab:Space()

SettingsTab:Button({
    Title = "Load Config",
    Icon = "refresh-cw",
    Callback = function()
        Window.CurrentConfig = ConfigManager:CreateConfig(ConfigName)
        if Window.CurrentConfig:Load() then
            notify("Loaded", "Config loaded successfully", 2)
        end
    end
})

SettingsTab:Space()

SettingsTab:Button({
    Title = "Reset All",
    Icon = "trash-2",
    Color = Color3.fromHex("#ff305d"),
    Callback = function()
        autoCollectEnabled = false
        stopAutoCollect()
        stopESP()
        scannedBrainrots = {}
        selectedTeleportTarget = nil
        notify("Reset", "All settings reset", 2)
    end
})

LocalPlayer.CharacterAdded:Connect(function(newChar)
    Character = newChar
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    Humanoid = Character:WaitForChild("Humanoid")
end)

if IsMobile then
    createMobileButton()
end

task.delay(2, function()
    scanForBrainrots()
    notify("NexoraX Loaded", "Found " .. #scannedBrainrots .. " objects. Ready!", 3)
end)

print("NexoraX Escape Tsunami loaded!")
print("Platform:", IsMobile and "Mobile" or "PC")
print("Features: Scanner, Teleport, Auto-Collect, Wave Detection, ESP")