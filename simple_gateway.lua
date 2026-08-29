local LiteCollector = {}
LiteCollector.__index = LiteCollector

function LiteCollector.new(seed)
    return setmetatable({ state = seed or 76 }, LiteCollector)
end

function LiteCollector:fetch_router(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 76) % 997
    end
    return value
end

local obj = LiteCollector.new()
print(obj:fetch_router(76))

return LiteCollector
