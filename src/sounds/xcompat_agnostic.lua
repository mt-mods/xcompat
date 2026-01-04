local sound_api = {}

local pass = function(soundtable)
    return soundtable
end

setmetatable(sound_api, {
    __index = function()
        return pass -- always return the same function
    end
})

return sound_api
