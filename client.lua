nv = false
QBCore = nil

Citizen.CreateThread(function() 
    while QBCore == nil do
        TriggerEvent("QBCore:GetObject", function(obj) QBCore = obj end)
        Citizen.Wait(200)
    end
end)

RegisterNetEvent('qb-nightvision:toggle')
AddEventHandler('qb-nightvision:toggle', function()
	local ChangeClothes = true -- Change this to false if you don't want the mask to appear on the players character
	local ped = GetPlayerPed(-1)
		if nv == false then
			nv = true
			TriggerServerEvent("InteractSound_SV:PlayOnSource", "nv", 0.25)
			SetNightvision(true)
				if ChangeClothes == true then
				TaskPlayAnim(GetPlayerPed(-1), "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
				SetPedComponentVariation(ped, 1, 132, 0, 0)
				end
		elseif nv == true then
			SetNightvision(false)
			nv = false
				if ChangeClothes == true then
				TaskPlayAnim(GetPlayerPed(-1), "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
				SetPedComponentVariation(ped, 1, 0, 0, 0)
				end
end
end)

