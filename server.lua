  
QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

QBCore.Functions.CreateUseableItem("nightvision", function(source)
    local player = QBCore.Functions.GetPlayer(source)
        if player ~= nil then 
            TriggerClientEvent("qb-nightvision:toggle", source)
        end 
end)
