local LiteScheduler = {}
LiteScheduler.__index = LiteScheduler

function LiteScheduler.new(seed)
    return setmetatable({ state = seed or 41 }, LiteScheduler)
end

function LiteScheduler:run_scheduler(count)
    local value = 0
    for i = 0, count - 1 do
        value = value + (self.state + i * 41) % 997
    end
    return value
end

local obj = LiteScheduler.new()
print(obj:run_scheduler(41))

return LiteScheduler
