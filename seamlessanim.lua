-- 💎SeamlessAnim - Full Script
-- Works on Delta and similar executors

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local localPlayer = Players.LocalPlayer

local Packs = {

    ["Astronaut"] = {
        run      = "rbxassetid://891636393",
        walk     = "rbxassetid://891636393",
        jump     = "rbxassetid://891627522",
        idles    = {"rbxassetid://891621366", "rbxassetid://891633237"},
        fall     = "rbxassetid://891617961",
        swim     = "rbxassetid://891639666",
        swimidle = "rbxassetid://891663592",
        climb    = "rbxassetid://891609353",
    },
    ["Bubbly"] = {
        run      = "rbxassetid://910025107",
        walk     = "rbxassetid://910034870",
        jump     = "rbxassetid://910016857",
        idles    = {"rbxassetid://910004836", "rbxassetid://910009958"},
        fall     = "rbxassetid://910001910",
        swim     = "rbxassetid://910028158",
        swimidle = "rbxassetid://910030921",
        climb    = "rbxassetid://909997997",
    },
    ["Cartoony"] = {
        run      = "rbxassetid://742638842",
        walk     = "rbxassetid://742640026",
        jump     = "rbxassetid://742637942",
        idles    = {"rbxassetid://742637544", "rbxassetid://742638445"},
        fall     = "rbxassetid://742637151",
        swim     = "rbxassetid://742639220",
        swimidle = "rbxassetid://742639812",
        climb    = "rbxassetid://742636889",
    },
    ["Elder"] = {
        run      = "rbxassetid://845386501",
        walk     = "rbxassetid://845403856",
        jump     = "rbxassetid://845398858",
        idles    = {"rbxassetid://845397899", "rbxassetid://845400520"},
        fall     = "rbxassetid://845396048",
        swim     = "rbxassetid://845401742",
        swimidle = "rbxassetid://845403127",
        climb    = "rbxassetid://845392038",
    },
    ["Knight"] = {
        run      = "rbxassetid://657564596",
        walk     = "rbxassetid://657552124",
        jump     = "rbxassetid://658409194",
        idles    = {"rbxassetid://657595757", "rbxassetid://657568135"},
        fall     = "rbxassetid://657600338",
        swim     = "rbxassetid://657560551",
        swimidle = "rbxassetid://657557095",
        climb    = "rbxassetid://658360781",
    },
    ["Levitation"] = {
        run      = "rbxassetid://616010382",
        walk     = "rbxassetid://616013216",
        jump     = "rbxassetid://616008936",
        idles    = {"rbxassetid://616006778", "rbxassetid://616008087"},
        fall     = "rbxassetid://616005863",
        swim     = "rbxassetid://616011509",
        swimidle = "rbxassetid://616012453",
        climb    = "rbxassetid://616003713",
    },
    ["Mage"] = {
        run      = "rbxassetid://707861613",
        walk     = "rbxassetid://707897309",
        jump     = "rbxassetid://707853694",
        idles    = {"rbxassetid://707742142", "rbxassetid://707855907"},
        fall     = "rbxassetid://707829716",
        swim     = "rbxassetid://707876443",
        swimidle = "rbxassetid://707894699",
        climb    = "rbxassetid://707826056",
    },
    ["Ninja"] = {
        run      = "rbxassetid://656118852",
        walk     = "rbxassetid://656121766",
        jump     = "rbxassetid://656117878",
        idles    = {"rbxassetid://656117400", "rbxassetid://656118341"},
        fall     = "rbxassetid://656115606",
        swim     = "rbxassetid://656119721",
        swimidle = "rbxassetid://656121397",
        climb    = "rbxassetid://656114359",
    },
    ["Pirate"] = {
        run      = "rbxassetid://750783738",
        walk     = "rbxassetid://750785693",
        jump     = "rbxassetid://750782230",
        idles    = {"rbxassetid://750781874", "rbxassetid://750782770"},
        fall     = "rbxassetid://750780242",
        swim     = "rbxassetid://750784579",
        swimidle = "rbxassetid://750785176",
        climb    = "rbxassetid://750779899",
    },
    ["Robot"] = {
        run      = "rbxassetid://616091570",
        walk     = "rbxassetid://616095330",
        jump     = "rbxassetid://616090535",
        idles    = {"rbxassetid://616088211", "rbxassetid://616089559"},
        fall     = "rbxassetid://616087089",
        swim     = "rbxassetid://616092998",
        swimidle = "rbxassetid://616094091",
        climb    = "rbxassetid://616086039",
    },
    ["Rthro"] = {
        run      = "rbxassetid://2510198475",
        walk     = "rbxassetid://2510202577",
        jump     = "rbxassetid://2510197830",
        idles    = {"rbxassetid://2510197257", "rbxassetid://2510196951"},
        fall     = "rbxassetid://2510195892",
        swim     = "rbxassetid://2510199791",
        swimidle = "rbxassetid://2510201162",
        climb    = "rbxassetid://2510192778",
    },
    ["Stylish"] = {
        run      = "rbxassetid://616140816",
        walk     = "rbxassetid://616146177",
        jump     = "rbxassetid://616139451",
        idles    = {"rbxassetid://616136790", "rbxassetid://616138447"},
        fall     = "rbxassetid://616134815",
        swim     = "rbxassetid://616143378",
        swimidle = "rbxassetid://616144772",
        climb    = "rbxassetid://616133594",
    },
    ["Superhero"] = {
        run      = "rbxassetid://616117076",
        walk     = "rbxassetid://616122287",
        jump     = "rbxassetid://616115533",
        idles    = {"rbxassetid://616111295", "rbxassetid://616113536"},
        fall     = "rbxassetid://616108001",
        swim     = "rbxassetid://616119360",
        swimidle = "rbxassetid://616120861",
        climb    = "rbxassetid://616104706",
    },
    ["Toy"] = {
        run      = "rbxassetid://782842708",
        walk     = "rbxassetid://782843345",
        jump     = "rbxassetid://782847020",
        idles    = {"rbxassetid://782841498", "rbxassetid://782845736"},
        fall     = "rbxassetid://782846423",
        swim     = "rbxassetid://782844582",
        swimidle = "rbxassetid://782845186",
        climb    = "rbxassetid://782843869",
    },
    ["Vampire"] = {
        run      = "rbxassetid://1083462077",
        walk     = "rbxassetid://1083473930",
        jump     = "rbxassetid://1083455352",
        idles    = {"rbxassetid://1083445855", "rbxassetid://1083450166"},
        fall     = "rbxassetid://1083443587",
        swim     = "rbxassetid://1083464683",
        swimidle = "rbxassetid://1083467779",
        climb    = "rbxassetid://1083439238",
    },
    ["Werewolf"] = {
        run      = "rbxassetid://1083216690",
        walk     = "rbxassetid://1083178339",
        jump     = "rbxassetid://1083218792",
        idles    = {"rbxassetid://1083195517", "rbxassetid://1083214717"},
        fall     = "rbxassetid://1083189019",
        swim     = "rbxassetid://1083222527",
        swimidle = "rbxassetid://1083225406",
        climb    = "rbxassetid://1083182000",
    },
    ["Zombie"] = {
        run      = "rbxassetid://616163682",
        walk     = "rbxassetid://616168032",
        jump     = "rbxassetid://616161997",
        idles    = {"rbxassetid://616158929", "rbxassetid://616160636"},
        fall     = "rbxassetid://616157476",
        swim     = "rbxassetid://616165109",
        swimidle = "rbxassetid://616166655",
        climb    = "rbxassetid://616156119",
    },
    ["Default"] = {
        run      = "rbxassetid://507767714",
        walk     = "rbxassetid://507777826",
        jump     = "rbxassetid://507765000",
        idles    = {"rbxassetid://507766388", "rbxassetid://507768720"},
        fall     = "rbxassetid://507767968",
        swim     = "rbxassetid://507784897",
        swimidle = "rbxassetid://507785072",
        climb    = "rbxassetid://507765644",
    },
}

local PackOrder = {
    "Cartoony",  "Ninja",
    "Robot",       "Zombie",        "Vampire",   "Werewolf",
    "Superhero",   "Knight",        "Pirate",    "Mage",
    "Toy",         "Bubbly",        "Stylish",   "Levitation",
    "Elder",       "Rthro",         "Astronaut", "Default"
}

local Emotes = {
    { name = "Godlike",               id = "rbxassetid://3823158750"      },
    { name = "Titan Speakerman Spin", id = "rbxassetid://103102322875221" },
    { name = "Fake Ragdoll",          id = "rbxassetid://96460555957347"  },
}

local currentPack     = nil
local activeEmoteTrack = nil
local activeAnimBtn   = nil
local activeEmoteBtn  = nil

-- ================================================
-- SOUND
-- ================================================
local function playClick()
    local s = Instance.new("Sound")
    s.SoundId = "rbxassetid://6026984224"
    s.Volume = 0.5
    s.Parent = localPlayer.PlayerGui
    s:Play()
    game:GetService("Debris"):AddItem(s, 2)
end

local function playApply()
    local s = Instance.new("Sound")
    s.SoundId = "rbxassetid://4612378143"
    s.Volume = 0.4
    s.Parent = localPlayer.PlayerGui
    s:Play()
    game:GetService("Debris"):AddItem(s, 2)
end

local function playOpen()
    local s = Instance.new("Sound")
    s.SoundId = "rbxassetid://6026984224"
    s.Volume = 0.3
    s.PlaybackSpeed = 0.8
    s.Parent = localPlayer.PlayerGui
    s:Play()
    game:GetService("Debris"):AddItem(s, 2)
end

-- ================================================
-- APPLY PACK
-- ================================================
local function applyPack(packName)
    local pack = Packs[packName]
    if not pack then return end
    local character = localPlayer.Character
    if not character then return end

    local humanoid = character:FindFirstChild("Humanoid")
    local animator = humanoid and humanoid:FindFirstChild("Animator")
    local animateScript = character:FindFirstChild("Animate")
    if not animateScript or not animator then return end

    local function setAnim(folder, id)
        local f = animateScript:FindFirstChild(folder)
        if f then
            for _, c in ipairs(f:GetChildren()) do
                if c:IsA("Animation") then c:Destroy() end
            end
            local a = Instance.new("Animation")
            a.AnimationId = id
            a.Parent = f
        end
    end

    local function setIdles(idles)
        local idleFolder = animateScript:FindFirstChild("idle")
        if not idleFolder then return end
        for _, c in ipairs(idleFolder:GetChildren()) do
            if c:IsA("Animation") then c:Destroy() end
        end
        for i, id in ipairs(idles) do
            local a = Instance.new("Animation")
            a.Name = "Animation" .. i
            a.AnimationId = id
            a.Parent = idleFolder
            local w = Instance.new("NumberValue")
            w.Name = "Weight"
            w.Value = 1
            w.Parent = a
        end
    end

    for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
        track:Stop(0)
    end

    animateScript.Enabled = false
    task.wait(0.15)

    setAnim("walk",     pack.walk)
    setAnim("run",      pack.run)
    setAnim("jump",     pack.jump)
    setAnim("fall",     pack.fall)
    setAnim("swim",     pack.swim)
    setAnim("swimidle", pack.swimidle)
    setAnim("climb",    pack.climb)
    if pack.idles then setIdles(pack.idles) end

    animateScript.Enabled = true
    task.wait(0.1)

    for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
        track:Stop(0)
    end

    currentPack = packName
    playApply()
    print("[💎SeamlessAnim] Applied: " .. packName)
end

-- ================================================
-- EMOTES
-- ================================================
local function playEmote(id)
    local character = localPlayer.Character
    if not character then return end
    local humanoid = character:FindFirstChild("Humanoid")
    local animator = humanoid and humanoid:FindFirstChild("Animator")
    if not animator then return end
    if activeEmoteTrack then
        activeEmoteTrack:Stop()
        activeEmoteTrack = nil
    end
    local anim = Instance.new("Animation")
    anim.AnimationId = id
    local track = animator:LoadAnimation(anim)
    track.Priority = Enum.AnimationPriority.Action
    track.Looped = true
    track:Play()
    activeEmoteTrack = track
    playApply()
end

local function stopEmote()
    if activeEmoteTrack then
        activeEmoteTrack:Stop()
        activeEmoteTrack = nil
    end
    if currentPack then applyPack(currentPack) end
    if activeEmoteBtn then
        activeEmoteBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        activeEmoteBtn.TextColor3 = Color3.fromRGB(210, 210, 210)
        activeEmoteBtn = nil
    end
    playClick()
end

-- ================================================
-- GUI
-- ================================================
local MIN_W, MIN_H = 280, 340
local FW, FH = 320, 440

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SeamlessAnimGUI"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = localPlayer.PlayerGui

-- ------------------------------------------------
-- TOGGLE BUTTON (draggable)
-- ------------------------------------------------
local toggleFrame = Instance.new("Frame")
toggleFrame.Size = UDim2.new(0, 110, 0, 40)
toggleFrame.Position = UDim2.new(0, 10, 0.5, -20)
toggleFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
toggleFrame.BorderSizePixel = 0
toggleFrame.Active = true
toggleFrame.Parent = screenGui
Instance.new("UICorner", toggleFrame).CornerRadius = UDim.new(0, 10)

-- Glowing border on toggle
local toggleStroke = Instance.new("UIStroke")
toggleStroke.Color = Color3.fromRGB(80, 160, 255)
toggleStroke.Thickness = 1.5
toggleStroke.Parent = toggleFrame

local toggleBtn = Instance.new("TextButton")
toggleBtn.Size = UDim2.new(1, 0, 1, 0)
toggleBtn.BackgroundTransparency = 1
toggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleBtn.Text = "💎 SeamlessAnim"
toggleBtn.TextSize = 11
toggleBtn.Font = Enum.Font.GothamBold
toggleBtn.Parent = toggleFrame

-- Drag toggle button
do
    local dragging, dragStart, startPos
    toggleFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = toggleFrame.Position
        end
    end)
    toggleFrame.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            toggleFrame.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end
    end)
end

-- ------------------------------------------------
-- MAIN FRAME
-- ------------------------------------------------
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, FW, 0, FH)
mainFrame.Position = UDim2.new(0, 130, 0.5, -(FH / 2))
mainFrame.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
mainFrame.BorderSizePixel = 0
mainFrame.Visible = false
mainFrame.Active = true
mainFrame.Parent = screenGui
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 14)

-- Outer glow stroke
local mainStroke = Instance.new("UIStroke")
mainStroke.Color = Color3.fromRGB(80, 160, 255)
mainStroke.Thickness = 1.5
mainStroke.Parent = mainFrame

-- Animated glow cycle
task.spawn(function()
    local t = 0
    while mainFrame do
        t += 0.03
        local brightness = 0.5 + 0.5 * math.sin(t)
        mainStroke.Color = Color3.fromRGB(
            math.floor(40 + brightness * 40),
            math.floor(120 + brightness * 40),
            255
        )
        toggleStroke.Color = mainStroke.Color
        task.wait(0.05)
    end
end)

-- ------------------------------------------------
-- TITLE BAR
-- ------------------------------------------------
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 46)
titleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
titleBar.BorderSizePixel = 0
titleBar.Active = true
titleBar.Parent = mainFrame
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 14)

-- Bottom fill to square off title bar bottom
local titleFill = Instance.new("Frame")
titleFill.Size = UDim2.new(1, 0, 0, 14)
titleFill.Position = UDim2.new(0, 0, 1, -14)
titleFill.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
titleFill.BorderSizePixel = 0
titleFill.Parent = titleBar

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -50, 1, 0)
titleLabel.Position = UDim2.new(0, 14, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "💎 SeamlessAnim"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.TextSize = 14
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Parent = titleBar

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 28, 0, 28)
closeBtn.Position = UDim2.new(1, -36, 0, 9)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 55, 55)
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Text = "✕"
closeBtn.TextSize = 12
closeBtn.Font = Enum.Font.GothamBold
closeBtn.BorderSizePixel = 0
closeBtn.Parent = mainFrame
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 6)

closeBtn.MouseButton1Click:Connect(function()
    playClick()
    TweenService:Create(mainFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Size = UDim2.new(0, FW, 0, 0),
        Position = UDim2.new(mainFrame.Position.X.Scale, mainFrame.Position.X.Offset, mainFrame.Position.Y.Scale, mainFrame.Position.Y.Offset + FH / 2)
    }):Play()
    task.wait(0.2)
    mainFrame.Visible = false
    mainFrame.Size = UDim2.new(0, FW, 0, FH)
end)

-- Drag main frame
do
    local dragging, dragStart, startPos
    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = mainFrame.Position
        end
    end)
    titleBar.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            mainFrame.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end
    end)
end

-- ------------------------------------------------
-- RESIZE HANDLE
-- ------------------------------------------------
local resizeHandle = Instance.new("TextButton")
resizeHandle.Size = UDim2.new(0, 20, 0, 20)
resizeHandle.Position = UDim2.new(1, -20, 1, -20)
resizeHandle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
resizeHandle.Text = "⌟"
resizeHandle.TextColor3 = Color3.fromRGB(120, 120, 120)
resizeHandle.TextSize = 14
resizeHandle.Font = Enum.Font.GothamBold
resizeHandle.BorderSizePixel = 0
resizeHandle.ZIndex = 10
resizeHandle.Parent = mainFrame
Instance.new("UICorner", resizeHandle).CornerRadius = UDim.new(0, 5)

do
    local resizing, resizeStart, startSize
    resizeHandle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            resizing = true
            resizeStart = input.Position
            startSize = mainFrame.Size
        end
    end)
    resizeHandle.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            resizing = false
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if resizing and (input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - resizeStart
            local newW = math.max(MIN_W, startSize.X.Offset + delta.X)
            local newH = math.max(MIN_H, startSize.Y.Offset + delta.Y)
            mainFrame.Size = UDim2.new(0, newW, 0, newH)
        end
    end)
end

-- ------------------------------------------------
-- TABS
-- ------------------------------------------------
local tabBar = Instance.new("Frame")
tabBar.Size = UDim2.new(1, -20, 0, 34)
tabBar.Position = UDim2.new(0, 10, 0, 52)
tabBar.BackgroundTransparency = 1
tabBar.Parent = mainFrame

local function makeTab(text, xPos)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.5, -4, 1, 0)
    btn.Position = UDim2.new(xPos, xPos == 0 and 0 or 8, 0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    btn.TextColor3 = Color3.fromRGB(140, 140, 140)
    btn.Text = text
    btn.TextSize = 12
    btn.Font = Enum.Font.GothamBold
    btn.BorderSizePixel = 0
    btn.Parent = tabBar
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
    return btn
end

local animTab  = makeTab("🏃 Animations", 0)
local emoteTab = makeTab("💃 Emotes", 0.5)

-- Divider
local divider = Instance.new("Frame")
divider.Size = UDim2.new(1, -20, 0, 1)
divider.Position = UDim2.new(0, 10, 0, 91)
divider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
divider.BorderSizePixel = 0
divider.Parent = mainFrame

-- Content area
local contentFrame = Instance.new("Frame")
contentFrame.Position = UDim2.new(0, 0, 0, 96)
contentFrame.Size = UDim2.new(1, 0, 1, -104)
contentFrame.BackgroundTransparency = 1
contentFrame.ClipsDescendants = true
contentFrame.Parent = mainFrame

-- ------------------------------------------------
-- ANIMATION SCROLL
-- ------------------------------------------------
local animScroll = Instance.new("ScrollingFrame")
animScroll.Size = UDim2.new(1, 0, 1, 0)
animScroll.BackgroundTransparency = 1
animScroll.BorderSizePixel = 0
animScroll.ScrollBarThickness = 3
animScroll.ScrollBarImageColor3 = Color3.fromRGB(80, 160, 255)
animScroll.Parent = contentFrame

local animLayout = Instance.new("UIListLayout")
animLayout.Padding = UDim.new(0, 5)
animLayout.Parent = animScroll

local animPad = Instance.new("UIPadding")
animPad.PaddingLeft = UDim.new(0, 10)
animPad.PaddingRight = UDim.new(0, 10)
animPad.PaddingTop = UDim.new(0, 8)
animPad.PaddingBottom = UDim.new(0, 8)
animPad.Parent = animScroll

for _, packName in ipairs(PackOrder) do
    local pack = Packs[packName]
    local idleCount = pack.idles and #pack.idles or 1

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 0, 36)
    btn.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    btn.TextColor3 = Color3.fromRGB(200, 200, 200)
    btn.Text = packName .. "   [" .. idleCount .. " idle" .. (idleCount > 1 and "s]" or "]")
    btn.TextSize = 12
    btn.Font = Enum.Font.Gotham
    btn.BorderSizePixel = 0
    btn.Parent = animScroll
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(35, 35, 35)
    stroke.Thickness = 1
    stroke.Parent = btn

    btn.MouseButton1Click:Connect(function()
        playClick()
        if activeAnimBtn then
            TweenService:Create(activeAnimBtn, TweenInfo.new(0.15), {
                BackgroundColor3 = Color3.fromRGB(22, 22, 22),
                TextColor3 = Color3.fromRGB(200, 200, 200)
            }):Play()
            activeAnimBtn:FindFirstChildWhichIsA("UIStroke").Color = Color3.fromRGB(35, 35, 35)
        end
        TweenService:Create(btn, TweenInfo.new(0.15), {
            BackgroundColor3 = Color3.fromRGB(20, 60, 120),
            TextColor3 = Color3.fromRGB(255, 255, 255)
        }):Play()
        btn:FindFirstChildWhichIsA("UIStroke").Color = Color3.fromRGB(80, 160, 255)
        activeAnimBtn = btn
        task.spawn(function() applyPack(packName) end)
    end)
end

animScroll.CanvasSize = UDim2.new(0, 0, 0, #PackOrder * 41 + 20)

-- ------------------------------------------------
-- EMOTE SCROLL
-- ------------------------------------------------
local emoteScroll = Instance.new("ScrollingFrame")
emoteScroll.Size = UDim2.new(1, 0, 1, 0)
emoteScroll.BackgroundTransparency = 1
emoteScroll.BorderSizePixel = 0
emoteScroll.ScrollBarThickness = 3
emoteScroll.ScrollBarImageColor3 = Color3.fromRGB(200, 100, 255)
emoteScroll.Visible = false
emoteScroll.Parent = contentFrame

local emoteLayout = Instance.new("UIListLayout")
emoteLayout.Padding = UDim.new(0, 5)
emoteLayout.Parent = emoteScroll

local emotePad = Instance.new("UIPadding")
emotePad.PaddingLeft = UDim.new(0, 10)
emotePad.PaddingRight = UDim.new(0, 10)
emotePad.PaddingTop = UDim.new(0, 8)
emotePad.PaddingBottom = UDim.new(0, 8)
emotePad.Parent = emoteScroll

-- Stop button
local stopBtn = Instance.new("TextButton")
stopBtn.Size = UDim2.new(1, 0, 0, 36)
stopBtn.BackgroundColor3 = Color3.fromRGB(100, 20, 20)
stopBtn.TextColor3 = Color3.fromRGB(255, 180, 180)
stopBtn.Text = "⏹  Stop Emote"
stopBtn.TextSize = 12
stopBtn.Font = Enum.Font.GothamBold
stopBtn.BorderSizePixel = 0
stopBtn.Parent = emoteScroll
Instance.new("UICorner", stopBtn).CornerRadius = UDim.new(0, 8)
stopBtn.MouseButton1Click:Connect(stopEmote)

for _, emote in ipairs(Emotes) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 0, 36)
    btn.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    btn.TextColor3 = Color3.fromRGB(200, 200, 200)
    btn.Text = "💃  " .. emote.name
    btn.TextSize = 12
    btn.Font = Enum.Font.Gotham
    btn.BorderSizePixel = 0
    btn.Parent = emoteScroll
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(35, 35, 35)
    stroke.Thickness = 1
    stroke.Parent = btn

    btn.MouseButton1Click:Connect(function()
        playClick()
        if activeEmoteBtn then
            TweenService:Create(activeEmoteBtn, TweenInfo.new(0.15), {
                BackgroundColor3 = Color3.fromRGB(22, 22, 22),
                TextColor3 = Color3.fromRGB(200, 200, 200)
            }):Play()
            activeEmoteBtn:FindFirstChildWhichIsA("UIStroke").Color = Color3.fromRGB(35, 35, 35)
        end
        TweenService:Create(btn, TweenInfo.new(0.15), {
            BackgroundColor3 = Color3.fromRGB(60, 20, 90),
            TextColor3 = Color3.fromRGB(255, 255, 255)
        }):Play()
        btn:FindFirstChildWhichIsA("UIStroke").Color = Color3.fromRGB(200, 100, 255)
        activeEmoteBtn = btn
        task.spawn(function() playEmote(emote.id) end)
    end)
end

emoteScroll.CanvasSize = UDim2.new(0, 0, 0, (#Emotes + 1) * 41 + 20)

-- ------------------------------------------------
-- TAB SWITCHING
-- ------------------------------------------------
local function setTab(isAnim)
    animScroll.Visible = isAnim
    emoteScroll.Visible = not isAnim

    TweenService:Create(animTab, TweenInfo.new(0.15), {
        BackgroundColor3 = isAnim and Color3.fromRGB(20, 60, 120) or Color3.fromRGB(28, 28, 28),
        TextColor3 = isAnim and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(140, 140, 140),
    }):Play()

    TweenService:Create(emoteTab, TweenInfo.new(0.15), {
        BackgroundColor3 = not isAnim and Color3.fromRGB(60, 20, 90) or Color3.fromRGB(28, 28, 28),
        TextColor3 = not isAnim and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(140, 140, 140),
    }):Play()
end

setTab(true)
animTab.MouseButton1Click:Connect(function() playClick() setTab(true) end)
emoteTab.MouseButton1Click:Connect(function() playClick() setTab(false) end)

-- ------------------------------------------------
-- TOGGLE OPEN/CLOSE WITH ANIMATION
-- ------------------------------------------------
local guiOpen = false

local function openGui()
    guiOpen = true
    mainFrame.Visible = true
    mainFrame.Size = UDim2.new(0, FW, 0, 0)
    mainFrame.Position = UDim2.new(
        mainFrame.Position.X.Scale,
        mainFrame.Position.X.Offset,
        mainFrame.Position.Y.Scale,
        mainFrame.Position.Y.Offset + FH / 2
    )
    playOpen()
    TweenService:Create(mainFrame, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, FW, 0, FH),
        Position = UDim2.new(
            mainFrame.Position.X.Scale,
            mainFrame.Position.X.Offset,
            mainFrame.Position.Y.Scale,
            mainFrame.Position.Y.Offset - FH / 2
        )
    }):Play()
end

local function closeGui()
    guiOpen = false
    playClick()
    local tween = TweenService:Create(mainFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Size = UDim2.new(0, FW, 0, 0),
        Position = UDim2.new(
            mainFrame.Position.X.Scale,
            mainFrame.Position.X.Offset,
            mainFrame.Position.Y.Scale,
            mainFrame.Position.Y.Offset + FH / 2
        )
    })
    tween:Play()
    tween.Completed:Connect(function()
        mainFrame.Visible = false
        mainFrame.Size = UDim2.new(0, FW, 0, FH)
    end)
end

toggleBtn.MouseButton1Click:Connect(function()
    if guiOpen then closeGui() else openGui() end
end)

closeBtn.MouseButton1Click:Connect(function()
    closeGui()
end)

-- Q key toggle
UserInputService.InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == Enum.KeyCode.Q then
        if guiOpen then closeGui() else openGui() end
    end
end)

-- Respawn
localPlayer.CharacterAdded:Connect(function(character)
    task.wait(1)
    if currentPack then applyPack(currentPack) end
end)

print("[💎SeamlessAnim] Loaded! " .. #PackOrder .. " packs ready. Press Q or tap toggle to open.")
