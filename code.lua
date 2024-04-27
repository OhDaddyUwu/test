local rainbowColors = "0123456789abcdef"

local width, height = term.getSize()

local startX = 1
local startY = 1

for y = 1, height do
    for x = 1, width do
        local colorIndex = ((x - 1) + (y - 1)) % #rainbowColors + 1
        local textColor = rainbowColors:sub(colorIndex, colorIndex)
        term.blit(" ", textColor, "0")
    end
end
