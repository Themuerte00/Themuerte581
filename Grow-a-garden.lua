Themuerte00/Themuerte581/Grow-a-garden/Grow A Garden.lua
-- Grow A Garden GUI + spawn
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")
local garden = workspace:FindFirstChild("Garden") or workspace

-- GUI
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "GardenSpawnerGUI"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 200, 0, 140)
frame.Position = UDim2.new(0, 10, 0.4, -70)
frame.BackgroundColor3 = Color3.fromRGB(40,40,40)
frame.BorderSizePixel = 0

local function makeButton(y, text, color, func)
    local b = Instance.new("TextButton", frame)
    b.Size = UDim2.new(1, -20, 0, 40)
    b.Position = UDim2.new(0, 10, 0, y)
    b.Text = text
    b.BackgroundColor3 = color
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.SourceSansBold
    b.TextSize = 18
    b.MouseButton1Click:Connect(func)
end

-- Spawnear
makeButton(10, "Spawnear Pet", Color3.fromRGB(255,100,100), function()
    local pet = Instance.new("Part")
    pet.Name = "CustomPet"
    pet.Size = Vector3.new(2,2,2)
    pet.Position = root.Position + Vector3.new(3,0,0)
    pet.BrickColor = BrickColor.new("Bright red")
    pet.Shape = Enum.PartType.Ball
    pet.Anchored = false
    pet.CanCollide = true
    pet.Parent = garden
end)

makeButton(60, "Spawnear Seed", Color3.fromRGB(100,255,100), function()
    local seed = Instance.new("Part")
    seed.Name = "CustomSeed"
    seed.Size = Vector3.new(1,1,1)
    seed.Position = root.Position + Vector3.new(-3,0,0)
    seed.BrickColor = BrickColor.new("Bright green")
    seed.Shape = Enum.PartType.Ball
    seed.Anchored = false
    seed.CanCollide = true
    seed.Parent = garden
end)

print("✅ GUI lista. Usa los botones para spawnear.")
