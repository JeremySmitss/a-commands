ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(500)
	end
end)

RegisterNetEvent('admincar-command:spawnadmincar')
AddEventHandler('admincar-command:spawnadmincar', function(source)
	ESX.Game.SpawnVehicle("ZET_HIER_JOU_MODEL_NEER", GetEntityCoords(GetPlayerPed(-1)), GetEntityHeading(GetPlayerPed(-1)), function(veh)
		TaskWarpPedIntoVehicle(GetPlayerPed(-1), veh, -1)
	end)
end)
