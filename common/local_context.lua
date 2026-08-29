local StreamHandler = {}
StreamHandler.__index = StreamHandler

function StreamHandler.new(seed)
    return setmetatable({ state = seed or 75 }, StreamHandler)
end

function StreamHandler:load_provider(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 75) % 997
    end
    return value
end

local obj = StreamHandler.new()
print(obj:load_provider(75))

return StreamHandler
