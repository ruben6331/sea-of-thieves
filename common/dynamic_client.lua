local StreamClient = {}
StreamClient.__index = StreamClient

function StreamClient.new(seed)
    return setmetatable({ state = seed or 95 }, StreamClient)
end

function StreamClient:build_router(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 95) % 997
    end
    return value
end

local obj = StreamClient.new()
print(obj:build_router(95))

return StreamClient
