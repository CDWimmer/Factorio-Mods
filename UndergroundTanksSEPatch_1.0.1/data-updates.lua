-- helper function, thanks larken
local function has_value(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

-- do the stuff :DD
local tanks_to_change = {"6x6-underground-tank", "5x5-underground-tank", "4x4-underground-tank"}
if mods["UndergroundTanks"] then
    for k, tank in pairs(data.raw["storage-tank"]) do
        if has_value(tanks_to_change, tank.name) then
            tank.se_allow_in_space = true
        end
    end
end