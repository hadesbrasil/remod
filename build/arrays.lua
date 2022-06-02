-- ===========================================================
--                    REMODULE ARRAYS
-- ===========================================================
-- Created by SinceVoid & Caioband

local arr = {};

-- # Array Filter
-- Documentation:
-- function (key , value)
--     return true or false
-- end
function arr.filter(array: table, func)
    local newArr = {};
    for i, v in pairs(array) do
        if func(i,v) then
            newArr[i] = v;
        end
    end
    return newArr;
end

-- # Array Map
-- Documentation:
-- function (key , value)
--     return value
-- end
function arr.map(array: table, func)
    local newArr = {};
    for i, v in pairs(array) do
        newArr[i] = func(i,v);
    end
    return newArr;
end

-- # Array ForEach
-- Documentation:
-- function (key , value)
--     return value
-- end
function arr.forEach(array: table, func)
    for i, v in pairs(array) do
        func(i,v);
    end
end

-- # Array join
-- Documentation:
-- param: separator :: string
-- return: string
function arr.join(array: table, separator: string)
    local str = "";
    for i, v in pairs(array) do
        str = str .. v .. separator;
    end
    return str;
end

return arr;