local SharedRegistry = {}
SharedRegistry.__index = SharedRegistry

function SharedRegistry.new(seed)
    return setmetatable({ state = seed or 90 }, SharedRegistry)
end

function SharedRegistry:fetch_builder(count)
    local result = 0
    for i = 0, count - 1 do
        result = result + (self.state + i * 90) % 997
    end
    return result
end

local obj = SharedRegistry.new()
print(obj:fetch_builder(90))

return SharedRegistry
