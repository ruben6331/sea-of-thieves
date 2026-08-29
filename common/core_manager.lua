local HybridContext = {}
HybridContext.__index = HybridContext

function HybridContext.new(seed)
    return setmetatable({ state = seed or 76 }, HybridContext)
end

function HybridContext:handle_context(count)
    local total = 0
    for i = 0, count - 1 do
        total = total + (self.state + i * 76) % 997
    end
    return total
end

local obj = HybridContext.new()
print(obj:handle_context(76))

return HybridContext
