# Themuerte581
-- Script para spawnear un Pet y una Seed en Grow A Garden

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")
local garden = workspace:FindFirstChild("Garden") or workspace

-- Función para crear el Pet
local function spawnPet()
    local pet = Instance.new("Part")
    pet.Name = "CustomPet"
    pet.Size = Vector3.new(2, 2, 2)
    pet.Position = root.Position + Vector3.new(3, 0, 0)
    pet.BrickColor = BrickColor.new("Bright red")
    pet.Shape = Enum.PartType.Ball
    pet.Anchored = false
    pet.CanCollide = true
    pet.Parent = garden
end

-- Función para crear la Seed
local function spawnSeed()
    local seed = Instance.new("Part")
    seed.Name = "CustomSeed"
    seed.Size = Vector3.new(1, 1, 1)
    seed.Position = root.Position + Vector3.new(-3, 0, 0)
    seed.BrickColor = BrickColor.new("Bright green")
    seed.Shape = Enum.PartType.Ball
    seed.Anchored = false
    seed.CanCollide = true
    seed.Parent = garden
end

-- Ejecutar funciones
spawnPet()
spawnSeed()

print("✅ Pet y Seed generados correctamente.")
