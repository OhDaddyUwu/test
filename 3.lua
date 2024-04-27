local rainbowColors = "0123456789abcdef"

local monitor = peripheral.find("monitor")

if monitor then
    local width, height = monitor.getSize()
    
    for y = 1, height do
        for x = 1, width do
            local colorIndex = ((x - 1) + (y - 1)) % #rainbowColors + 1
            local textColor = rainbowColors:sub(colorIndex, colorIndex)
            monitor.blit(" ", textColor, "0")
        end
    end
else
    print("No monitor found.")
end
