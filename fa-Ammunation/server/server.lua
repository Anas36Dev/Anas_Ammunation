---
--- Script : Anas_Ammunation
--- Author : Anas36Dev
--- DateTime: 08/10/2023 21:47
---

print("^5-----------------------------^0")
print("^1-- Anas_Ammunation started --^0")
print("^1---- F&A Shop - By Anas -----^0")
print("^5-----------------------------^0")

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function CheckLicense(source, type, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.identifier

	MySQL.Async.fetchAll('SELECT COUNT(*) as count FROM user_licenses WHERE type = @type AND owner = @owner', {
		['@type']  = type,
		['@owner'] = identifier
	}, function(result)
		if tonumber(result[1].count) > 0 then
			cb(true)
		else
			cb(false)
		end

	end)
end

ESX.RegisterServerCallback('_Anas:Ammunation:CheckLicense', function(source, cb, type)
    CheckLicense(source, 'weapon', cb)
end)

RegisterNetEvent('_Anas:Ammunation:AchatArme')
AddEventHandler('_Anas:Ammunation:AchatArme', function(item, label, prix)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()
    local name = GetPlayerName(source)

	if playerMoney >= prix then
		xPlayer.addWeapon(item, 1)
		xPlayer.removeMoney(prix)
		TriggerClientEvent('esx:showNotification', source, "~r~"..Config.Ammunation.ServerName.."\n~w~Vous avez bien reçu votre ~o~"..label.." ~s~!")
		PerformHttpRequest(Config.Ammunation.Webhook, function(err, text, headers) end, 'POST', json.encode({username = "Ammunation", content = "**"..xPlayer.getName() .. "** vient d'acheter **"..label.."** pour **"..prix.."**$"}), { ['Content-Type'] = 'application/json' })
	else
		TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent !")
	end
end)