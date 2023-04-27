QBCore =  exports['qb-core']:GetCoreObject()

QBCore.Commands.Add("scare", "Jumpscare xD", {{name = "id", help = "Player ID"}}, false, function(source, args)
	local src = source
    local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if args[1] then
		if Player then
            TriggerClientEvent('landmand-scare-it', Player.PlayerData.source)
		else
			TriggerClientEvent('QBCore:Notify', src, 'Spiller ikke online!', "error")
		end
	else
		TriggerClientEvent('landmand-scare-it', src)
	end

end, "admin")

QBCore.Commands.Add("hello", "Hello?", {{name = "id", help = "Player ID"}}, false, function(source, args)
	local src = source
    local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if args[1] then
		if Player then
            TriggerClientEvent('landmand-hello-it', Player.PlayerData.source)
		else
			TriggerClientEvent('QBCore:Notify', src, 'Spiller ikke online!', "error")
		end
	else
		TriggerClientEvent('landmand-hello-it', src)
	end

end, "admin")

QBCore.Commands.Add("hellonear", "Hello nearby", {{name = "id", help = "Player ID"}}, false, function(source, args)
	local src = source
    local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if args[1] then
		if Player then
            TriggerClientEvent('landmand:hellonear', Player.PlayerData.source)
		else
			TriggerClientEvent('QBCore:Notify', src, 'Spiller ikke online!', "error")
		end
	else
		TriggerClientEvent('landmand:hellonear', src)
	end

end, "admin")

QBCore.Commands.Add("findme", "Find me", {{name = "id", help = "Player ID"}}, false, function(source, args)
	local src = source
    local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if args[1] then
		if Player then
            TriggerClientEvent('landmand-findme-it', Player.PlayerData.source)
		else
			TriggerClientEvent('QBCore:Notify', src, 'Spiller ikke online!', "error")
		end
	else
		TriggerClientEvent('landmand-findme-it', src)
	end

end, "admin")

QBCore.Commands.Add("findmenear", "Find me nearby", {{name = "id", help = "Player ID"}}, false, function(source, args)
	local src = source
    local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
	if args[1] then
		if Player then
            TriggerClientEvent('landmand-findmenear-it', Player.PlayerData.source)
		else
			TriggerClientEvent('QBCore:Notify', src, 'Spiller ikke online!', "error")
		end
	else
		TriggerClientEvent('landmand-findmenear-it', src)
	end

end, "admin")