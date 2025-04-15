local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local h = c:WaitForChild("Head")

local function m(p, id, tex, s, o, r)
	local part = Instance.new("MeshPart")
	part.Size, part.MeshId, part.TextureID, part.CanCollide, part.Anchored, part.Parent = s or Vector3.one, id, tex, false, false, p.Parent
	part.CFrame = p.CFrame * CFrame.new(o or Vector3.zero) * CFrame.Angles(math.rad(r.X or 0), math.rad(r.Y or 0), math.rad(r.Z or 0))
	Instance.new("WeldConstraint", part).Part0, part.WeldConstraint.Part1 = part, p
	return part
end

local function applyClothes()
	if not c then return end
	for _, cls in pairs{"Shirt", "Pants"} do
		local old = c:FindFirstChildOfClass(cls)
		if old then old:Destroy() end
	end
	local shirt = Instance.new("Shirt", c)
	shirt.ShirtTemplate = "rbxassetid://11939240833"
	local pants = Instance.new("Pants", c)
	pants.PantsTemplate = "rbxassetid://15731367605"
	task.wait(0.1)
	shirt.Parent = nil
	task.wait(0.1)
	shirt.Parent = c
end

local function removeFace()
	h.Color = Color3.new(1,1,1)
	h:FindFirstChild("face"):Destroy()
end

m(h, "rbxassetid://16727952350", "rbxassetid://16727798573", nil, Vector3.new(0,0.2,0), Vector3.zero)
m(h, "rbxassetid://15692041811", "rbxassetid://16152347751", nil, Vector3.new(0,0.2,0), Vector3.zero)
m(h, "rbxassetid://16717499857", "rbxassetid://16717435268", nil, Vector3.new(0,-0.4,0), Vector3.zero)

applyClothes()
removeFace()
