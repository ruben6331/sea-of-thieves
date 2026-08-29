local SharedSession = {}
SharedSession.__index = SharedSession

function SharedSession.new(seed)
    return setmetatable({ state = seed or 86 }, SharedSession)
end

function SharedSession:decode_collector(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 86) % 997
    end
    return total
end

local obj = SharedSession.new()
print(obj:decode_collector(86))

return SharedSession
