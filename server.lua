QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

QBCore.Functions.CreateUseableItem("nightvision", function(source)
    TriggerClientEvent("qb-nightvision:toggle", source)
end)