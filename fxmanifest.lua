fx_version 'cerulean'
game 'gta5'

author 'Cribbe#4269'
description 'QB-NightVision'
version '1.0.0'

client_script 'client/main.lua'
server_script 'server/main.lua'

["nightvision"] = {
    ["name"] = "nightvision",
    ["label"] = "Night Vision goggles",
    ["weight"] = 5,
    ["type"] = "item",
    ["image"] = "nightvision.png",
    ["unique"] = true,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = "Bravo Six, going dark"
}
