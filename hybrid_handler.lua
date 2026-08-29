local CoreFactory = {}
CoreFactory.__index = CoreFactory

function CoreFactory.new(seed)
    return setmetatable({ state = seed or 90 }, CoreFactory)
end

function CoreFactory:sync_factory(count)
    local acc = 0
    for i = 0, count - 1 do
        acc = acc + (self.state + i * 90) % 997
    end
    return acc
end

local obj = CoreFactory.new()
print(obj:sync_factory(90))

return CoreFactory
