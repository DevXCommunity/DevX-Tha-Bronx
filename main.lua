--[[

DevX

]] --

local v0 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local v1 =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local v2 =
    loadstring(
    game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua")
)()
local v3 =
    v0:CreateWindow(
    {
        Title = "DevX  | Tha Bronx 3 🎭 ",
        TabWidth = 230 - (64 + 6),
        Size = UDim2.fromOffset(580, 460),
        Theme = "Darker",
        MinimizeKey = Enum.KeyCode.RightShift
    }
)
local v4 = game:GetService("Players")
local function v5(v143)
    if (v143 == v4.LocalPlayer) then
        local v469 = 0
        while true do
            if (v469 == (1900 - (106 + 1794))) then
                warn(v143.Name .. " wurde versucht zu kicken oder zu bannen, aber der Kick/Ban wurde blockiert.")
                return Enum.PlayerRemoveReason.Unknown
            end
        end
    end
end
v4.PlayerRemoving:Connect(v5)
v0:Notify({Title = "DevX", Content = "Client is 100% Loaded", SubContent = "", Duration = 2 + 3})
wait(1 + 1)
v0:Notify({Title = "DevX Version", Content = "Checking If Status is UpToDate", SubContent = "", Duration = 14 - 9})
wait(2)
v0:Notify({Title = "DevX Version", Content = "Status: UpToDate", SubContent = "", Duration = 5})
wait(7 - 4)
v0:Notify({Title = "Anti-Cheat Bypass", Content = "Bypass is Loaded", SubContent = "", Duration = 5})
local v6 = {
    Credits = v3:AddTab({Title = "Credits", Icon = "paperclip"}),
    Visual = v3:AddTab({Title = "Visual", Icon = "aperture"}),
    Combat = v3:AddTab({Title = "Combat", Icon = "skull"}),
    Player = v3:AddTab({Title = "Player", Icon = "user"}),
    Others = v3:AddTab({Title = "Others", Icon = "users"}),
    Troll = v3:AddTab({Title = "Troll", Icon = "laugh"}),
    PickUp = v3:AddTab({Title = "PickUp", Icon = "grab"}),
    Dupe = v3:AddTab({Title = "Dupe", Icon = "briefcase"}),
    AutoFarm = v3:AddTab({Title = "AutoFarm", Icon = "leaf"}),
    Money = v3:AddTab({Title = "Money", Icon = "wallet"}),
    Teleport = v3:AddTab({Title = "Teleport", Icon = "map"}),
    Shop = v3:AddTab({Title = "Shop", Icon = "shopping-cart"}),
    Bypasses = v3:AddTab({Title = "Bypasses", Icon = "shield-check"}),
    Game = v3:AddTab({Title = "Game", Icon = "cog"}),
    Settings = v3:AddTab({Title = "Settings", Icon = "cog"})
}
local function v7()
    if game.Lighting then
        for v518, v519 in pairs(game.Lighting:GetChildren()) do
            if
                (v519:IsA("PostEffect") or v519:IsA("BloomEffect") or v519:IsA("SunRaysEffect") or
                    v519:IsA("DepthOfFieldEffect"))
             then
                pcall(
                    function()
                        v519:Destroy()
                    end
                )
            end
        end
    end
end
local function v8(v144)
    game.Lighting.ClockTime = v144
    if _G.LockTimeConnection then
        _G.LockTimeConnection:Disconnect()
    end
    _G.LockTimeConnection =
        game.Lighting:GetPropertyChangedSignal("ClockTime"):Connect(
        function()
            if (game.Lighting.ClockTime ~= v144) then
                game.Lighting.ClockTime = v144
            end
        end
    )
end
v6.Game:AddButton(
    {
        Title = "Remove All Effects (FPS)",
        Description = "Deletes all specific effects from Lighting permanently",
        Callback = function()
            local v146 = 0
            while true do
                if (v146 == (114 - (4 + 110))) then
                    task.spawn(
                        function()
                            pcall(
                                function()
                                    loadstring(
                                        game:HttpGet(
                                            "https://raw.githubusercontent.com/DracoSwagBaby/ScriptsBanger/refs/heads/main/Remove%20All%20Effects"
                                        )
                                    )()
                                end
                            )
                        end
                    )
                    v7()
                    break
                end
            end
        end
    }
)
v6.Game:AddButton(
    {
        Title = "More Vibrant [RTX]",
        Description = "Deletes all specific effects from Lighting permanently",
        Callback = function()
            local v147 = 584 - (57 + 527)
            while true do
                if (v147 == 0) then
                    task.spawn(
                        function()
                            pcall(
                                function()
                                    loadstring(
                                        game:HttpGet(
                                            "https://raw.githubusercontent.com/DracoSwagBaby/ScriptsBanger/refs/heads/main/RTX"
                                        )
                                    )()
                                end
                            )
                        end
                    )
                    v7()
                    break
                end
            end
        end
    }
)
local v9 = v6.Game:AddSection("Extra")
v6.Game:AddButton(
    {
        Title = "Set to Day [Permanently]",
        Description = "Click to set the game time to permanent day.",
        Callback = function()
            v8(1439 - (41 + 1386))
        end
    }
)
v6.Game:AddButton(
    {
        Title = "Set to Night [Permanently]",
        Description = "Click to set the game time to permanent night.",
        Callback = function()
            v8(0)
        end
    }
)
local v9 = v6.Game:AddSection("About Admin")
local v10 =
    v6.Game:AddToggle(
    "AdminAlert",
    {Title = "Admin Alert", Description = "Notifies when an admin joins", Default = false, Callback = function(v148)
            _G.AdminAlertEnabled = v148
        end}
)
local function v11()
    for v410, v411 in ipairs(game.Players:GetPlayers()) do
        for v470, v471 in ipairs(v411:GetChildren()) do
            if v471.Name:find("_Tracker") then
                local v558 = 0
                while true do
                    if (v558 == 0) then
                        v0:Notify(
                            {
                                Title = "Admin Alert",
                                Content = "User: " .. v411.Name .. " is an Admin! Be Careful!",
                                Duration = 5
                            }
                        )
                        return
                    end
                end
            end
        end
    end
end
spawn(
    function()
        while wait(113 - (17 + 86)) do
            if _G.AdminAlertEnabled then
                v11()
            end
        end
    end
)
v6.Bypasses:AddButton(
    {
        Title = "Instant Prompts",
        Description = "Removes the E Holding Time Anywhere",
        Callback = function()
            local function v149()
                for v472, v473 in ipairs(game:GetService("Workspace"):GetDescendants()) do
                    if v473:IsA("ProximityPrompt") then
                        v473.HoldDuration = 0
                    end
                end
            end
            v149()
            task.spawn(
                function()
                    while true do
                        task.wait(11 + 4)
                        v149()
                    end
                end
            )
        end
    }
)
v6.Bypasses:AddButton(
    {
        Title = "Anti-Fall",
        Description = "Disables Fall Damage",
        Callback = function()
            local function v150()
                local v412 = game.Players.LocalPlayer
                if (v412 and v412.Character) then
                    local v521 = v412.Character:FindFirstChild("FallDamageRagdoll")
                    if v521 then
                        v521.Disabled = true
                    end
                end
            end
            task.spawn(
                function()
                    while true do
                        local v474 = 0 - 0
                        while true do
                            if (v474 == (0 - 0)) then
                                task.wait(1)
                                v150()
                                break
                            end
                        end
                    end
                end
            )
        end
    }
)
v6.Bypasses:AddButton(
    {
        Title = "Anti-Hunger",
        Description = "Disables the hunger system permanently",
        Callback = function()
            local function v151()
                local v413 = game.Players.LocalPlayer
                if (v413 and v413:FindFirstChild("PlayerGui")) then
                    local v522 = v413.PlayerGui:FindFirstChild("Hunger")
                    if v522 then
                        local v590 = 166 - (122 + 44)
                        local v591
                        while true do
                            if (v590 == (0 - 0)) then
                                v591 =
                                    v522:FindFirstChild("Frame") and v522.Frame:FindFirstChild("Frame") and
                                    v522.Frame.Frame:FindFirstChild("Frame") and
                                    v522.Frame.Frame.Frame:FindFirstChild("HungerBarScript")
                                if v591 then
                                    v591.Disabled = true
                                end
                                break
                            end
                        end
                    end
                end
            end
            task.spawn(
                function()
                    while true do
                        local v475 = 0
                        while true do
                            if ((0 
