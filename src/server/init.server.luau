local playQueueFsm = require(script.MatchState)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ToggleAFK = ReplicatedStorage:WaitForChild("ToggleAFK")
local Players = game:GetService("Players")

Players.PlayerAdded:Connect(playQueueFsm.add)
Players.PlayerRemoving:Connect(playQueueFsm.remove)

ToggleAFK.OnServerEvent:Connect(function(player: Player, afkModeOn: boolean)
  if afkModeOn == true then playQueueFsm.add(player) else playQueueFsm.remove(player) end
end)
