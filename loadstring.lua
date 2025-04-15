local player = game.Players.LocalPlayer

local function a()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Inteli914900ks/Sn0wy-D4y3/refs/heads/main/Main.lua"))()
end

local function b()
    player.CharacterAdded:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Inteli914900ks/Sn0wy-D4y3/refs/heads/main/Main.lua"))()
    end)
end

a()
b()
