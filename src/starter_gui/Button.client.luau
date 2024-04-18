local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ToggleAFK = ReplicatedStorage:WaitForChild("ToggleAFK")

local afkModeOn = false

script.Parent.Activated:Connect(function()
	afkModeOn = not afkModeOn
  ToggleAFK:FireServer(afkModeOn)
end)