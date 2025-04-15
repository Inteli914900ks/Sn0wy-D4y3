local function c()
	local p=game.Players.LocalPlayer
local c=p.Character or p.CharacterAdded:Wait()
local h,c1=c:WaitForChild("Head"),c:WaitForChild("Torso")

local function m(a,b,t,s,o,r)
	local d=Instance.new("MeshPart")
	d.Size=s or Vector3.one
	d.MeshId=b d.TextureID=t
	d.CanCollide=false d.Anchored=false
	d.Parent=a.Parent
	d.CFrame=a.CFrame*CFrame.new(o or Vector3.zero)*CFrame.Angles(math.rad(r.X or 0),math.rad(r.Y or 0),math.rad(r.Z or 0))
	local w=Instance.new("WeldConstraint",d)
	w.Part0=d w.Part1=a
end

for _,v in pairs{"Shirt","Pants"} do local x=c:FindFirstChildOfClass(v) if x then x:Destroy() end end
local s=Instance.new("Shirt",c) s.ShirtTemplate="rbxassetid://11939240833"
local pz=Instance.new("Pants",c) pz.PantsTemplate="rbxassetid://15731367605"
task.wait(.1) s.Parent=nil task.wait(.1) s.Parent=c

h.Color=Color3.new(1,1,1) h:FindFirstChild("face"):Destroy()

m(h,"rbxassetid://16727952350","rbxassetid://16727798573",nil,Vector3.new(0,.2,0),Vector3.zero)
m(h,"rbxassetid://15692041811","rbxassetid://16152347751",nil,Vector3.new(0,.2,0),Vector3.zero)
m(h,"rbxassetid://16717499857","rbxassetid://16717435268",nil,Vector3.new(0,-.4,0),Vector3.zero)
end

-- Create a LocalScript under StarterPlayerScripts or StarterCharacterScripts

local player = game.Players.LocalPlayer

-- Function to print "Hi" when the game starts
local function a()
	c()
end

-- Function to print "Hi there" every time the character respawns
local function b()
    player.CharacterAdded:Connect(function()
			c()
    end)
end

-- Call the functions
a()
b()
