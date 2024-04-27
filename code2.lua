local text = "Rainbow Text!"
local rainbowColors = "0123456789abcdef"
local textLength = #text
local startX = 1
local startY = 1

for i = 1, textLength do
    local colorIndex = (i - 1) % #rainbowColors + 1
    local textColor = rainbowColors:sub(colorIndex, colorIndex)
    term.blit(text:sub(i, i), textColor, "0")
end

term.setCursorPos(startX, startY + 1)
