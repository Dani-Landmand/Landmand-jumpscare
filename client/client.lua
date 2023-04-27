QBCore =  exports['qb-core']:GetCoreObject()
local ValidExtensions = {
  [".png"] = true,
  [".gif"] = true,
  [".jpg"] = true,
  ["jpeg"] = true
}

RegisterNetEvent('landmand-scare-it', function()
	TriggerEvent("scare:doc")
end)
  
	RegisterNetEvent('landmand-scare-it', function(ItemData)
    local DocumentUrl = 'https://www.google.dk/url?sa=i&url=https%3A%2F%2Ftenor.com%2Fview%2Fjumpscare-ring-jumpscare-the-ring-ringu-ringu-jumpscare-gif-25005890&psig=AOvVaw1w3nD04oyQcxt3xvmUECoV&ust=1682672317362000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCOCf1OnYyf4CFQAAAAAdAAAAABAE'
	SendNUIMessage({
		action = "open",
		url = DocumentUrl
	})
	SetNuiFocus(true, false)
	Wait(250)
  	TriggerServerEvent("InteractSound_SV:PlayOnSource", "jumpscaresound", 1.0)
	Wait(2500)
	SetNuiFocus(false, false)
	SendNUIMessage({
		action = "close",
		url = DocumentUrl
	})
	end)

	RegisterNUICallback('CloseDocument', function()
		SetNuiFocus(false, false)
	end)

	RegisterNetEvent('landmand-hello-it', function()
		TriggerServerEvent("InteractSound_SV:PlayOnSource", "hellosound", 1.0)
	end)

	RegisterNetEvent('landmand:hellonear', function()
		TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 7.0, "hellosound", 1.0)
	end)