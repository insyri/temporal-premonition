local module = {}

type NumberArray = { [number]: number }
local playQueue: NumberArray = {}

local function add(player: Player)
  table.insert(playQueue, player.UserId)
end

local function remove(player: Player) 
  local pos = table.find(playQueue, player.UserId)
  if pos == nil then end
  table.remove(playQueue, pos)
end

local function getQueue()
  return playQueue
end

module.add = add
module.remove = remove
module.getQueue = getQueue

return module