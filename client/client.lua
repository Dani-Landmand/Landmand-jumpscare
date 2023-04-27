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
    local DocumentUrl = 'https://cdn.discordapp.com/attachments/924357952217952329/1004872191499829420/asdasda.png'
	SendNUIMessage({
		action = "open",
		url = DocumentUrl
	})
	SetNuiFocus(true, false)
	Wait(250)
  	TriggerServerEvent("InteractSound_SV:PlayOnSource", "jumpscare", 1.0)
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
		TriggerServerEvent("InteractSound_SV:PlayOnSource", "hello", 1.0)
	end)

	RegisterNetEvent('landmand:hellonear', function()
		TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 7.0, "hello", 1.0)
	end)

	RegisterNetEvent('landmand-findme-it', function()
		TriggerServerEvent("InteractSound_SV:PlayOnSource", "findme", 1.0)
	end)

	RegisterNetEvent('landmand-findmenear-it', function()
		TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 7.0, "findme", 1.0)
	end)