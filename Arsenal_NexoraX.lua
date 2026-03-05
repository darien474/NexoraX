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
local GuiService = game:GetService("GuiService")

local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

local IsMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
local IsPC = not IsMobile

local aimbotEnabled = false
local silentAimEnabled = false
local aimbotSmoothness = 1
local aimbotFOV = 180
local aimPart = "Head"
local teamCheck = false
local wallCheck = false
local deadCheck = false
local silentAimHitChance = 100
local aimbotMode = "Center"

local boxEspEnabled = false
local chamsEnabled = false
local nameEspEnabled = false
local healthEspEnabled = false
local distanceEspEnabled = false
local tracerEspEnabled = false
local skeletonEspEnabled = false
local boxColor = Color3.fromRGB(255, 0, 0)
local chamsColor = Color3.fromRGB(255, 0, 0)
local tracerColor = Color3.fromRGB(255, 255, 255)
local skeletonColor = Color3.fromRGB(255, 255, 255)

local teamCheckESP = false
local wallCheckESP = false
local deadCheckESP = false
local maxEspDistance = 1000

local espObjects = {}
local chamsHighlights = {}
local tracerLines = {}
local skeletonLines = {}
local fovCircle = nil
local aimbotConnection = nil
local silentAimConnection = nil
local espConnection = nil
local chamsConnection = nil

local mobileAimbotTouch = nil
local mobileAimbotActive = false
local mobileAimbotButton = nil

local function getCharacterParts(character)
    local parts = {}
    local partNames = {
        "Head", "HumanoidRootPart", "Torso", "UpperTorso", "LowerTorso",
        "LeftArm", "RightArm", "LeftLeg", "RightLeg",
        "LeftUpperArm", "LeftLowerArm", "LeftHand",
        "RightUpperArm", "RightLowerArm", "RightHand",
        "LeftUpperLeg", "LeftLowerLeg", "LeftFoot",
        "RightUpperLeg", "RightLowerLeg", "RightFoot"
    }
    
    for _, name in ipairs(partNames) do
        local part = character:FindFirstChild(name)
        if part then
            parts[name] = part
        end
    end
    
    return parts
end

local function isPlayerValid(player)
    if player == LocalPlayer then return false end
    if not player.Character then return false end
    if not player.Character:FindFirstChild("Humanoid") then return false end
    if player.Character.Humanoid.Health <= 0 then return false end
    return true
end

local function isTeamCheckValid(player, isESP)
    local checkTeam = isESP and teamCheckESP or teamCheck
    if not checkTeam then return true end
    if player.Team == LocalPlayer.Team then return false end
    return true
end

local function isWallCheckValid(player, targetPart, isESP)
    local checkWall = isESP and wallCheckESP or wallCheck
    if not checkWall then return true end
    if not targetPart then return false end
    
    local character = player.Character
    if not character then return false end
    
    local rayOrigin = Camera.CFrame.Position
    local rayDirection = (targetPart.Position - rayOrigin).Unit * 1000
    
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = {LocalPlayer.Character, Camera}
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
    raycastParams.IgnoreWater = true
    
    local raycastResult = workspace:Raycast(rayOrigin, rayDirection, raycastParams)
    
    if raycastResult then
        local hitInstance = raycastResult.Instance
        local hitModel = hitInstance:FindFirstAncestorOfClass("Model")
        
        if hitModel == character then
            return true
        end
        
        if hitInstance:IsDescendantOf(character) then
            return true
        end
        
        local hitDistance = (raycastResult.Position - targetPart.Position).Magnitude
        if hitDistance < 5 then
            return true
        end
        
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                local partRay = workspace:Raycast(rayOrigin, (part.Position - rayOrigin).Unit * 1000, raycastParams)
                if partRay and partRay.Instance:IsDescendantOf(character) then
                    return true
                end
            end
        end
        
        return false
    end
    
    return true
end

local function isDeadCheckValid(player, isESP)
    local checkDead = isESP and deadCheckESP or deadCheck
    if not checkDead then return true end
    
    local character = player.Character
    if not character then return false end
    
    local humanoid = character:FindFirstChild("Humanoid")
    if not humanoid then return false end
    
    if humanoid.Health <= 0 then return false end
    
    if character:GetAttribute("Downed") or character:GetAttribute("Knocked") then
        return false
    end
    
    if humanoid:GetState() == Enum.HumanoidStateType.Dead then
        return false
    end
    
    return true
end

local function updateFOVCircle()
    if fovCircle then
        fovCircle:Remove()
    end
    fovCircle = Drawing.new("Circle")
    fovCircle.Color = Color3.new(1, 1, 1)
    fovCircle.Thickness = 1.5
    fovCircle.Radius = aimbotFOV
    fovCircle.Filled = false
    fovCircle.Visible = aimbotEnabled or silentAimEnabled
    fovCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    fovCircle.NumSides = 64
end

updateFOVCircle()

Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
    if fovCircle then
        fovCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    end
end)

local function getClosestPlayerToCenter()
    local closestDistance = aimbotFOV
    local closestPlayer = nil
    local closestPart = nil
    local screenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    
    for _, player in ipairs(Players:GetPlayers()) do
        if not isPlayerValid(player) then continue end
        if not isTeamCheckValid(player, false) then continue end
        if not isDeadCheckValid(player, false) then continue end
        
        local character = player.Character
        local targetPart = character:FindFirstChild(aimPart) or character:FindFirstChild("Head") or character:FindFirstChild("HumanoidRootPart")
        
        if targetPart then
            local screenPos, onScreen = Camera:WorldToViewportPoint(targetPart.Position)
            if onScreen then
                if not isWallCheckValid(player, targetPart, false) then
                    continue
                end
                
                local distance = (Vector2.new(screenPos.X, screenPos.Y) - screenCenter).Magnitude
                if distance < closestDistance then
                    closestDistance = distance
                    closestPlayer = player
                    closestPart = targetPart
                end
            end
        end
    end
    
    return closestPlayer, closestPart
end

local function getClosestPlayerToMouse()
    local closestDistance = aimbotFOV
    local closestPlayer = nil
    local closestPart = nil
    local mousePos = Vector2.new(Mouse.X, Mouse.Y)
    
    for _, player in ipairs(Players:GetPlayers()) do
        if not isPlayerValid(player) then continue end
        if not isTeamCheckValid(player, false) then continue end
        if not isDeadCheckValid(player, false) then continue end
        
        local character = player.Character
        local targetPart = character:FindFirstChild(aimPart) or character:FindFirstChild("Head") or character:FindFirstChild("HumanoidRootPart")
        
        if targetPart then
            local screenPos, onScreen = Camera:WorldToViewportPoint(targetPart.Position)
            if onScreen then
                if not isWallCheckValid(player, targetPart, false) then
                    continue
                end
                
                local distance = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                if distance < closestDistance then
                    closestDistance = distance
                    closestPlayer = player
                    closestPart = targetPart
                end
            end
        end
    end
    
    return closestPlayer, closestPart
end

local originalNamecall
local silentAimTarget = nil
local silentAimPart = nil

local function setupSilentAim()
    if originalNamecall then return end
    
    originalNamecall = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        local args = {...}
        
        if silentAimEnabled and silentAimTarget and silentAimPart then
            if method == "FireServer" then
                local remoteName = tostring(self)
                if remoteName:lower():find("shoot") or remoteName:lower():find("fire") or remoteName:lower():find("hit") or remoteName:lower():find("damage") then
                    if math.random(1, 100) <= silentAimHitChance then
                        for i, arg in ipairs(args) do
                            if typeof(arg) == "Vector3" then
                                args[i] = silentAimPart.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
                            elseif typeof(arg) == "CFrame" then
                                args[i] = CFrame.new(silentAimPart.Position)
                            elseif typeof(arg) == "Instance" and arg:IsA("BasePart") then
                                args[i] = silentAimPart
                            end
                        end
                        
                        if typeof(args[#args]) == "table" then
                            for k, v in pairs(args[#args]) do
                                if typeof(v) == "Vector3" then
                                    args[#args][k] = silentAimPart.Position
                                elseif typeof(v) == "CFrame" then
                                    args[#args][k] = CFrame.new(silentAimPart.Position)
                                elseif typeof(v) == "Instance" and v:IsA("BasePart") then
                                    args[#args][k] = silentAimPart
                                end
                            end
                        end
                    end
                end
            end
        end
        
        return originalNamecall(self, unpack(args))
    end)
end

local function updateSilentAim()
    if not silentAimEnabled then
        silentAimTarget = nil
        silentAimPart = nil
        return
    end
    
    local target, part
    if aimbotMode == "Mouse" and IsPC then
        target, part = getClosestPlayerToMouse()
    else
        target, part = getClosestPlayerToCenter()
    end
    silentAimTarget = target
    silentAimPart = part
end

local function startAimbot()
    if aimbotConnection then
        aimbotConnection:Disconnect()
    end
    
    aimbotConnection = RunService.RenderStepped:Connect(function()
        if not aimbotEnabled then return end
        
        local target, part
        if aimbotMode == "Mouse" and IsPC then
            target, part = getClosestPlayerToMouse()
        else
            target, part = getClosestPlayerToCenter()
        end
        
        if target and part then
            local targetPos = part.Position
            local smoothFactor = aimbotSmoothness / 20
            local newCFrame = CFrame.lookAt(Camera.CFrame.Position, targetPos)
            Camera.CFrame = Camera.CFrame:Lerp(newCFrame, smoothFactor)
        end
    end)
end

local function stopAimbot()
    if aimbotConnection then
        aimbotConnection:Disconnect()
        aimbotConnection = nil
    end
end

local function createMobileAimbotButton()
    if not IsMobile then return end
    if mobileAimbotButton then return end
    
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "NexoraXMobile"
    screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    
    mobileAimbotButton = Instance.new("TextButton")
    mobileAimbotButton.Name = "AimbotButton"
    mobileAimbotButton.Size = UDim2.new(0, 80, 0, 80)
    mobileAimbotButton.Position = UDim2.new(0.85, 0, 0.7, 0)
    mobileAimbotButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    mobileAimbotButton.BackgroundTransparency = 0.3
    mobileAimbotButton.Text = "AIM"
    mobileAimbotButton.TextColor3 = Color3.new(1, 1, 1)
    mobileAimbotButton.TextSize = 20
    mobileAimbotButton.Font = Enum.Font.GothamBold
    mobileAimbotButton.BorderSizePixel = 0
    mobileAimbotButton.Parent = screenGui
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = mobileAimbotButton
    
    mobileAimbotButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            mobileAimbotActive = true
            mobileAimbotButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        end
    end)
    
    mobileAimbotButton.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            mobileAimbotActive = false
            mobileAimbotButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        end
    end)
    
    local dragging = false
    local dragStart = nil
    local startPos = nil
    
    mobileAimbotButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch and input ~= mobileAimbotTouch then
            dragging = true
            dragStart = input.Position
            startPos = mobileAimbotButton.Position
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.Touch then
            local delta = input.Position - dragStart
            mobileAimbotButton.Position = UDim2.new(
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

local function removeMobileAimbotButton()
    if mobileAimbotButton then
        mobileAimbotButton.Parent:Destroy()
        mobileAimbotButton = nil
    end
end

local function startMobileAimbot()
    if not IsMobile then return end
    
    RunService.RenderStepped:Connect(function()
        if aimbotEnabled and mobileAimbotActive then
            local target, part = getClosestPlayerToCenter()
            if target and part then
                local targetPos = part.Position
                local smoothFactor = aimbotSmoothness / 20
                local newCFrame = CFrame.lookAt(Camera.CFrame.Position, targetPos)
                Camera.CFrame = Camera.CFrame:Lerp(newCFrame, smoothFactor)
            end
        end
    end)
end

local function createESPObject(player)
    if espObjects[player] then return end
    
    local esp = {
        box = Drawing.new("Square"),
        name = Drawing.new("Text"),
        health = Drawing.new("Text"),
        distance = Drawing.new("Text"),
        tracer = Drawing.new("Line"),
        skeleton = {}
    }
    
    esp.box.Visible = false
    esp.box.Color = boxColor
    esp.box.Thickness = 1
    esp.box.Transparency = 1
    esp.box.Filled = false
    
    esp.name.Visible = false
    esp.name.Color = Color3.new(1, 1, 1)
    esp.name.Center = true
    esp.name.Size = 16
    esp.name.Outline = true
    
    esp.health.Visible = false
    esp.health.Color = Color3.new(0, 1, 0)
    esp.health.Center = true
    esp.health.Size = 14
    esp.health.Outline = true
    
    esp.distance.Visible = false
    esp.distance.Color = Color3.new(1, 1, 0)
    esp.distance.Center = true
    esp.distance.Size = 12
    esp.distance.Outline = true
    
    esp.tracer.Visible = false
    esp.tracer.Color = tracerColor
    esp.tracer.Thickness = 1
    esp.tracer.Transparency = 1
    
    for i = 1, 12 do
        local line = Drawing.new("Line")
        line.Visible = false
        line.Color = skeletonColor
        line.Thickness = 1
        table.insert(esp.skeleton, line)
    end
    
    espObjects[player] = esp
end

local function removeESPObject(player)
    local esp = espObjects[player]
    if not esp then return end
    
    esp.box:Remove()
    esp.name:Remove()
    esp.health:Remove()
    esp.distance:Remove()
    esp.tracer:Remove()
    
    for _, line in ipairs(esp.skeleton) do
        line:Remove()
    end
    
    espObjects[player] = nil
end

local function updateESP()
    local screenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    local localRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    
    for player, esp in pairs(espObjects) do
        if not isPlayerValid(player) then
            esp.box.Visible = false
            esp.name.Visible = false
            esp.health.Visible = false
            esp.distance.Visible = false
            esp.tracer.Visible = false
            for _, line in ipairs(esp.skeleton) do
                line.Visible = false
            end
            continue
        end
        
        if not isTeamCheckValid(player, true) then
            esp.box.Visible = false
            esp.name.Visible = false
            esp.health.Visible = false
            esp.distance.Visible = false
            esp.tracer.Visible = false
            for _, line in ipairs(esp.skeleton) do
                line.Visible = false
            end
            continue
        end
        
        if not isDeadCheckValid(player, true) then
            esp.box.Visible = false
            esp.name.Visible = false
            esp.health.Visible = false
            esp.distance.Visible = false
            esp.tracer.Visible = false
            for _, line in ipairs(esp.skeleton) do
                line.Visible = false
            end
            continue
        end
        
        local character = player.Character
        local humanoid = character:FindFirstChild("Humanoid")
        local root = character:FindFirstChild("HumanoidRootPart")
        local head = character:FindFirstChild("Head")
        
        if not root or not head then
            esp.box.Visible = false
            esp.name.Visible = false
            esp.health.Visible = false
            esp.distance.Visible = false
            esp.tracer.Visible = false
            for _, line in ipairs(esp.skeleton) do
                line.Visible = false
            end
            continue
        end
        
        if wallCheckESP then
            if not isWallCheckValid(player, root, true) then
                esp.box.Visible = false
                esp.name.Visible = false
                esp.health.Visible = false
                esp.distance.Visible = false
                esp.tracer.Visible = false
                for _, line in ipairs(esp.skeleton) do
                    line.Visible = false
                end
                continue
            end
        end
        
        local distance = 0
        if localRoot then
            distance = (root.Position - localRoot.Position).Magnitude
        end
        
        if distance > maxEspDistance then
            esp.box.Visible = false
            esp.name.Visible = false
            esp.health.Visible = false
            esp.distance.Visible = false
            esp.tracer.Visible = false
            for _, line in ipairs(esp.skeleton) do
                line.Visible = false
            end
            continue
        end
        
        local rootPos, rootOnScreen = Camera:WorldToViewportPoint(root.Position)
        local headPos, headOnScreen = Camera:WorldToViewportPoint(head.Position)
        
        if not rootOnScreen and not headOnScreen then
            esp.box.Visible = false
            esp.name.Visible = false
            esp.health.Visible = false
            esp.distance.Visible = false
            esp.tracer.Visible = false
            for _, line in ipairs(esp.skeleton) do
                line.Visible = false
            end
            continue
        end
        
        if boxEspEnabled then
            local boxHeight = math.abs(headPos.Y - rootPos.Y) * 2
            local boxWidth = boxHeight * 0.6
            
            esp.box.Position = Vector2.new(rootPos.X - boxWidth / 2, rootPos.Y - boxHeight / 2)
            esp.box.Size = Vector2.new(boxWidth, boxHeight)
            esp.box.Color = boxColor
            esp.box.Visible = true
        else
            esp.box.Visible = false
        end
        
        if nameEspEnabled then
            esp.name.Position = Vector2.new(rootPos.X, rootPos.Y - math.abs(headPos.Y - rootPos.Y) - 25)
            esp.name.Text = player.Name
            esp.name.Visible = true
        else
            esp.name.Visible = false
        end
        
        if healthEspEnabled then
            local healthPercent = humanoid.Health / humanoid.MaxHealth
            esp.health.Position = Vector2.new(rootPos.X, rootPos.Y - math.abs(headPos.Y - rootPos.Y) - 10)
            esp.health.Text = string.format("%d/%d", math.floor(humanoid.Health), math.floor(humanoid.MaxHealth))
            esp.health.Color = Color3.new(1 - healthPercent, healthPercent, 0)
            esp.health.Visible = true
        else
            esp.health.Visible = false
        end
        
        if distanceEspEnabled then
            esp.distance.Position = Vector2.new(rootPos.X, rootPos.Y + math.abs(headPos.Y - rootPos.Y) + 5)
            esp.distance.Text = string.format("%.0f studs", distance)
            esp.distance.Visible = true
        else
            esp.distance.Visible = false
        end
        
        if tracerEspEnabled then
            esp.tracer.From = screenCenter
            esp.tracer.To = Vector2.new(rootPos.X, rootPos.Y)
            esp.tracer.Color = tracerColor
            esp.tracer.Visible = true
        else
            esp.tracer.Visible = false
        end
        
        if skeletonEspEnabled then
            local parts = getCharacterParts(character)
            local connections = {
                {"Head", "UpperTorso"},
                {"UpperTorso", "LowerTorso"},
                {"UpperTorso", "LeftUpperArm"},
                {"LeftUpperArm", "LeftLowerArm"},
                {"LeftLowerArm", "LeftHand"},
                {"UpperTorso", "RightUpperArm"},
                {"RightUpperArm", "RightLowerArm"},
                {"RightLowerArm", "RightHand"},
                {"LowerTorso", "LeftUpperLeg"},
                {"LeftUpperLeg", "LeftLowerLeg"},
                {"LeftLowerLeg", "LeftFoot"},
                {"LowerTorso", "RightUpperLeg"},
                {"RightUpperLeg", "RightLowerLeg"},
                {"RightLowerLeg", "RightFoot"}
            }
            
            local lineIndex = 1
            for _, connection in ipairs(connections) do
                if lineIndex > #esp.skeleton then break end
                
                local part1 = parts[connection[1]]
                local part2 = parts[connection[2]]
                
                if part1 and part2 then
                    local pos1, onScreen1 = Camera:WorldToViewportPoint(part1.Position)
                    local pos2, onScreen2 = Camera:WorldToViewportPoint(part2.Position)
                    
                    if onScreen1 and onScreen2 then
                        esp.skeleton[lineIndex].From = Vector2.new(pos1.X, pos1.Y)
                        esp.skeleton[lineIndex].To = Vector2.new(pos2.X, pos2.Y)
                        esp.skeleton[lineIndex].Color = skeletonColor
                        esp.skeleton[lineIndex].Visible = true
                    else
                        esp.skeleton[lineIndex].Visible = false
                    end
                else
                    esp.skeleton[lineIndex].Visible = false
                end
                
                lineIndex = lineIndex + 1
            end
            
            for i = lineIndex, #esp.skeleton do
                esp.skeleton[i].Visible = false
            end
        else
            for _, line in ipairs(esp.skeleton) do
                line.Visible = false
            end
        end
    end
end

local function applyChams(player)
    if chamsHighlights[player] then return end
    
    if player.Character then
        local highlight = Instance.new("Highlight")
        highlight.FillColor = chamsColor
        highlight.OutlineColor = Color3.new(1, 1, 1)
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0
        highlight.Parent = player.Character
        chamsHighlights[player] = highlight
    end
end

local function removeChams(player)
    if chamsHighlights[player] then
        chamsHighlights[player]:Destroy()
        chamsHighlights[player] = nil
    end
end

local function updateChams()
    for player, highlight in pairs(chamsHighlights) do
        if player and player.Character then
            local shouldShow = chamsEnabled
            
            if teamCheckESP and player.Team == LocalPlayer.Team then
                shouldShow = false
            end
            
            if deadCheckESP and not isDeadCheckValid(player, true) then
                shouldShow = false
            end
            
            highlight.Enabled = shouldShow
            highlight.FillColor = chamsColor
        else
            removeChams(player)
        end
    end
end

local Window = WindUI:CreateWindow({
    Title = "NexoraX I Arsenal",
    Author = "by Darien:> & conzorx",
    Folder = "NexoraX",
    Size = UDim2.fromOffset(700, 550),
    OpenButton = {
        Title = "Open NexoraX",
        Enabled = true,
        Draggable = true,
        OnlyMobile = false,
    }
})

Window:Tag({
    Title = IsMobile and "v3.0.0 | Mobile" or "v3.0.0 | PC",
    Icon = "github",
    Color = Color3.fromHex("#ff305d")
})

local AimbotSection = Window:Section({
    Title = "Aimbot",
    Icon = "crosshair"
})

local MainAimbotTab = AimbotSection:Tab({
    Title = "Main",
    Icon = "target"
})

MainAimbotTab:Paragraph({
    Title = "Platform",
    Desc = IsMobile and "Mobile Mode Active - Use on-screen button" or "PC Mode Active - Use mouse or center lock",
})

MainAimbotTab:Space()

MainAimbotTab:Toggle({
    Flag = "AimbotEnabled",
    Title = "Aimbot",
    Desc = IsMobile and "Enable aimbot (use on-screen button)" or "Smooth aimbot that moves camera to target",
    Default = false,
    Callback = function(state)
        aimbotEnabled = state
        if fovCircle then
            fovCircle.Visible = aimbotEnabled or silentAimEnabled
        end
        
        if IsMobile then
            if state then
                createMobileAimbotButton()
            else
                removeMobileAimbotButton()
            end
        else
            if state then
                startAimbot()
            else
                stopAimbot()
            end
        end
    end
})

MainAimbotTab:Space()

if IsPC then
    MainAimbotTab:Dropdown({
        Flag = "AimbotMode",
        Title = "Aimbot Mode",
        Desc = "Center = Screen center, Mouse = Near cursor",
        Values = {"Center", "Mouse"},
        Value = "Center",
        Callback = function(value)
            aimbotMode = value
        end
    })
    
    MainAimbotTab:Space()
end

MainAimbotTab:Toggle({
    Flag = "SilentAimEnabled",
    Title = "Silent Aim",
    Desc = "Redirects bullets to target without moving camera",
    Default = false,
    Callback = function(state)
        silentAimEnabled = state
        if fovCircle then
            fovCircle.Visible = aimbotEnabled or silentAimEnabled
        end
        
        if state then
            setupSilentAim()
            if silentAimConnection then
                silentAimConnection:Disconnect()
            end
            silentAimConnection = RunService.Heartbeat:Connect(updateSilentAim)
        else
            if silentAimConnection then
                silentAimConnection:Disconnect()
                silentAimConnection = nil
            end
            silentAimTarget = nil
            silentAimPart = nil
        end
    end
})

MainAimbotTab:Space()

MainAimbotTab:Slider({
    Flag = "SilentAimHitChance",
    Title = "Silent Aim Hit Chance",
    Desc = "Percentage of shots that will redirect",
    Step = 5,
    Value = {
        Min = 0,
        Max = 100,
        Default = 100,
    },
    Callback = function(value)
        silentAimHitChance = value
    end
})

MainAimbotTab:Space()

MainAimbotTab:Slider({
    Flag = "AimbotSmoothness",
    Title = "Smoothness",
    Desc = "1 = Smooth, 10 = Instant (Aimbot only)",
    Step = 1,
    Value = {
        Min = 1,
        Max = 10,
        Default = 1,
    },
    Callback = function(value)
        aimbotSmoothness = value
    end
})

MainAimbotTab:Space()

MainAimbotTab:Slider({
    Flag = "AimbotFOV",
    Title = "FOV",
    Desc = "Field of view for targeting",
    Step = 5,
    Value = {
        Min = 30,
        Max = 500,
        Default = 180,
    },
    Callback = function(value)
        aimbotFOV = value
        updateFOVCircle()
    end
})

MainAimbotTab:Space()

MainAimbotTab:Dropdown({
    Flag = "AimPart",
    Title = "Aim Part",
    Desc = "Which body part to target",
    Values = {"Head", "HumanoidRootPart", "Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"},
    Value = "Head",
    Callback = function(value)
        aimPart = value
    end
})

local AimbotSettingsTab = AimbotSection:Tab({
    Title = "Settings",
    Icon = "settings"
})

AimbotSettingsTab:Toggle({
    Flag = "TeamCheckAimbot",
    Title = "Team Check",
    Desc = "Ignore teammates",
    Default = false,
    Callback = function(state)
        teamCheck = state
    end
})

AimbotSettingsTab:Space()

AimbotSettingsTab:Toggle({
    Flag = "WallCheck",
    Title = "Wall Check",
    Desc = "Only target visible players",
    Default = false,
    Callback = function(state)
        wallCheck = state
    end
})

AimbotSettingsTab:Space()

AimbotSettingsTab:Toggle({
    Flag = "DeadCheck",
    Title = "Dead Check",
    Desc = "Ignore dead/down players",
    Default = false,
    Callback = function(state)
        deadCheck = state
    end
})

AimbotSettingsTab:Space()

AimbotSettingsTab:Dropdown({
    Flag = "FOVCircleColor",
    Title = "FOV Circle Color",
    Desc = "Change FOV circle color",
    Values = {"White", "Red", "Green", "Blue", "Yellow", "Magenta"},
    Value = "White",
    Callback = function(value)
        if not fovCircle then return end
        local colors = {
            White = Color3.new(1, 1, 1),
            Red = Color3.new(1, 0, 0),
            Green = Color3.new(0, 1, 0),
            Blue = Color3.new(0, 0, 1),
            Yellow = Color3.new(1, 1, 0),
            Magenta = Color3.new(1, 0, 1)
        }
        fovCircle.Color = colors[value]
    end
})

local VisualSection = Window:Section({
    Title = "Visuals",
    Icon = "eye"
})

local EspMainTab = VisualSection:Tab({
    Title = "ESP",
    Icon = "box-select"
})

EspMainTab:Toggle({
    Flag = "BoxESP",
    Title = "Box ESP",
    Desc = "Draw boxes around players",
    Default = false,
    Callback = function(state)
        boxEspEnabled = state
        updateESPState()
    end
})

EspMainTab:Space()

EspMainTab:Toggle({
    Flag = "NameESP",
    Title = "Name ESP",
    Desc = "Show player names",
    Default = false,
    Callback = function(state)
        nameEspEnabled = state
        updateESPState()
    end
})

EspMainTab:Space()

EspMainTab:Toggle({
    Flag = "HealthESP",
    Title = "Health ESP",
    Desc = "Show player health",
    Default = false,
    Callback = function(state)
        healthEspEnabled = state
        updateESPState()
    end
})

EspMainTab:Space()

EspMainTab:Toggle({
    Flag = "DistanceESP",
    Title = "Distance ESP",
    Desc = "Show distance to players",
    Default = false,
    Callback = function(state)
        distanceEspEnabled = state
        updateESPState()
    end
})

EspMainTab:Space()

EspMainTab:Toggle({
    Flag = "TracerESP",
    Title = "Tracer ESP",
    Desc = "Draw lines from screen center to players",
    Default = false,
    Callback = function(state)
        tracerEspEnabled = state
        updateESPState()
    end
})

EspMainTab:Space()

EspMainTab:Toggle({
    Flag = "SkeletonESP",
    Title = "Skeleton ESP",
    Desc = "Draw player skeletons",
    Default = false,
    Callback = function(state)
        skeletonEspEnabled = state
        updateESPState()
    end
})

EspMainTab:Space()

EspMainTab:Toggle({
    Flag = "Chams",
    Title = "Chams",
    Desc = "Highlight players through walls",
    Default = false,
    Callback = function(state)
        chamsEnabled = state
        if state then
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    applyChams(player)
                end
            end
            if not chamsConnection then
                chamsConnection = RunService.Heartbeat:Connect(updateChams)
            end
        else
            if chamsConnection then
                chamsConnection:Disconnect()
                chamsConnection = nil
            end
            for player, _ in pairs(chamsHighlights) do
                removeChams(player)
            end
            chamsHighlights = {}
        end
    end
})

local EspSettingsTab = VisualSection:Tab({
    Title = "Settings",
    Icon = "sliders-horizontal"
})

EspSettingsTab:Toggle({
    Flag = "ESPTeamCheck",
    Title = "Team Check",
    Desc = "Don't show teammates",
    Default = false,
    Callback = function(state)
        teamCheckESP = state
    end
})

EspSettingsTab:Space()

EspSettingsTab:Toggle({
    Flag = "ESPWallCheck",
    Title = "Wall Check",
    Desc = "Only show visible players",
    Default = false,
    Callback = function(state)
        wallCheckESP = state
    end
})

EspSettingsTab:Space()

EspSettingsTab:Toggle({
    Flag = "ESPDeadCheck",
    Title = "Dead Check",
    Desc = "Don't show dead/down players",
    Default = false,
    Callback = function(state)
        deadCheckESP = state
    end
})

EspSettingsTab:Space()

EspSettingsTab:Slider({
    Flag = "MaxESPDistance",
    Title = "Max Distance",
    Desc = "Maximum distance to show ESP",
    Step = 50,
    Value = {
        Min = 100,
        Max = 5000,
        Default = 1000,
    },
    Callback = function(value)
        maxEspDistance = value
    end
})

EspSettingsTab:Space()

EspSettingsTab:Colorpicker({
    Flag = "BoxColor",
    Title = "Box Color",
    Desc = "Color of ESP boxes",
    Default = Color3.fromRGB(255, 0, 0),
    Transparency = 0,
    Callback = function(color)
        boxColor = color
    end
})

EspSettingsTab:Space()

EspSettingsTab:Colorpicker({
    Flag = "ChamsColor",
    Title = "Chams Color",
    Desc = "Color of chams highlight",
    Default = Color3.fromRGB(255, 0, 0),
    Transparency = 0,
    Callback = function(color)
        chamsColor = color
    end
})

EspSettingsTab:Space()

EspSettingsTab:Colorpicker({
    Flag = "TracerColor",
    Title = "Tracer Color",
    Desc = "Color of tracer lines",
    Default = Color3.fromRGB(255, 255, 255),
    Transparency = 0,
    Callback = function(color)
        tracerColor = color
    end
})

EspSettingsTab:Space()

EspSettingsTab:Colorpicker({
    Flag = "SkeletonColor",
    Title = "Skeleton Color",
    Desc = "Color of skeleton lines",
    Default = Color3.fromRGB(255, 255, 255),
    Transparency = 0,
    Callback = function(color)
        skeletonColor = color
    end
})

EspSettingsTab:Space()

EspSettingsTab:Slider({
    Flag = "ESPTextSize",
    Title = "Text Size",
    Desc = "Size of ESP text",
    Step = 1,
    Value = {
        Min = 8,
        Max = 24,
        Default = 14,
    },
    Callback = function(value)
        for _, esp in pairs(espObjects) do
            esp.name.Size = value
            esp.health.Size = value - 2
            esp.distance.Size = value - 4
        end
    end
})

local SettingsSection = Window:Section({
    Title = "Settings",
    Icon = "cog"
})

local ConfigTab = SettingsSection:Tab({
    Title = "Config",
    Icon = "save"
})

local ConfigManager = Window.ConfigManager
local ConfigName = "default"

local ConfigNameInput = ConfigTab:Input({
    Title = "Config Name",
    Icon = "file-cog",
    Callback = function(value)
        ConfigName = value
    end
})

ConfigTab:Dropdown({
    Title = "All Configs",
    Desc = "Select existing configs",
    Values = ConfigManager:AllConfigs(),
    Callback = function(value)
        ConfigName = value
        ConfigNameInput:Set(value)
    end
})

ConfigTab:Space()

ConfigTab:Button({
    Title = "Save Config",
    Icon = "save",
    Justify = "Center",
    Callback = function()
        Window.CurrentConfig = ConfigManager:CreateConfig(ConfigName)
        if Window.CurrentConfig:Save() then
            WindUI:Notify({
                Title = "Config Saved",
                Desc = "Config '" .. ConfigName .. "' saved",
                Icon = "check",
            })
        end
    end
})

ConfigTab:Space()

ConfigTab:Button({
    Title = "Load Config",
    Icon = "refresh-cw",
    Justify = "Center",
    Callback = function()
        Window.CurrentConfig = ConfigManager:CreateConfig(ConfigName)
        if Window.CurrentConfig:Load() then
            WindUI:Notify({
                Title = "Config Loaded",
                Desc = "Config '" .. ConfigName .. "' loaded",
                Icon = "refresh-cw",
            })
        end
    end
})

ConfigTab:Space()

ConfigTab:Button({
    Title = "Reset All",
    Icon = "trash-2",
    Color = Color3.fromHex("#ff305d"),
    Justify = "Center",
    Callback = function()
        aimbotEnabled = false
        silentAimEnabled = false
        boxEspEnabled = false
        chamsEnabled = false
        nameEspEnabled = false
        healthEspEnabled = false
        distanceEspEnabled = false
        tracerEspEnabled = false
        skeletonEspEnabled = false
        
        teamCheck = false
        wallCheck = false
        deadCheck = false
        teamCheckESP = false
        wallCheckESP = false
        deadCheckESP = false
        
        stopAimbot()
        if silentAimConnection then
            silentAimConnection:Disconnect()
            silentAimConnection = nil
        end
        if espConnection then
            espConnection:Disconnect()
            espConnection = nil
        end
        if chamsConnection then
            chamsConnection:Disconnect()
            chamsConnection = nil
        end
        
        removeMobileAimbotButton()
        
        for player, _ in pairs(espObjects) do
            removeESPObject(player)
        end
        for player, _ in pairs(chamsHighlights) do
            removeChams(player)
        end
        
        if fovCircle then
            fovCircle.Visible = false
        end
        
        WindUI:Notify({
            Title = "Reset Complete",
            Desc = "All features disabled",
            Icon = "check",
        })
    end
})

local CreditsSection = Window:Section({
    Title = "Credits",
    Icon = "info"
})

local CreditsTab = CreditsSection:Tab({
    Title = "About",
    Icon = "users"
})

CreditsTab:Paragraph({
    Title = "NexoraX Arsenal",
    Desc = "Version: 3.0.0\nCreated by: Darien & Roger\nUI Library: WindUI by Footagesus (.ftgs)\nPlatform: " .. (IsMobile and "Mobile" or "PC"),
})

CreditsTab:Space()

CreditsTab:Section({
    Title = "Features",
    TextSize = 18,
    FontWeight = Enum.FontWeight.SemiBold,
})

CreditsTab:Paragraph({
    Title = "",
    Desc = "• Aimbot with Smoothness & FOV\n• Silent Aim with Hit Chance\n• Box ESP\n• Name ESP\n• Health ESP\n• Distance ESP\n• Tracer ESP\n• Skeleton ESP\n• Chams\n• Team Check\n• Wall Check\n• Dead Check\n• Config System\n• " .. (IsMobile and "Mobile Touch Support" or "PC Mouse Support"),
})

function updateESPState()
    local anyESP = boxEspEnabled or nameEspEnabled or healthEspEnabled or distanceEspEnabled or tracerEspEnabled or skeletonEspEnabled
    
    if anyESP then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                createESPObject(player)
            end
        end
        if not espConnection then
            espConnection = RunService.RenderStepped:Connect(updateESP)
        end
    else
        if espConnection then
            espConnection:Disconnect()
            espConnection = nil
        end
        for player, _ in pairs(espObjects) do
            removeESPObject(player)
        end
    end
end

Players.PlayerAdded:Connect(function(player)
    if player == LocalPlayer then return end
    
    if boxEspEnabled or nameEspEnabled or healthEspEnabled or distanceEspEnabled or tracerEspEnabled or skeletonEspEnabled then
        createESPObject(player)
    end
    
    if chamsEnabled then
        player.CharacterAdded:Connect(function()
            task.wait(0.5)
            applyChams(player)
        end)
        if player.Character then
            applyChams(player)
        end
    end
end)

Players.PlayerRemoving:Connect(function(player)
    removeESPObject(player)
    removeChams(player)
end)

if IsMobile then
    startMobileAimbot()
end

WindUI:Notify({
    Title = "NexoraX Loaded",
    Desc = "v0.1.0 Ready!(Demo) platform:" .. (IsMobile and "Mobile" or "PC"),
    Icon = "check",
    Duration = 5,
})

print("NexoraX Arsenal Loaded(DEMO)") 
print("Platform:", IsMobile and "Mobile" or "PC")