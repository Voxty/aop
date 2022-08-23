local lastAOP = "N/A"
local lastAOPSet = "N/A"

RegisterCommand('aop', function(source, args, user)
	local name = GetPlayerName(source)
	local id = source
	if table.concat(args, "") ~= "" then
	lastAOP = table.concat(args, " ")
	lastAOPSet = name
	TriggerClientEvent("sendMessageAOP", -1, source, name, table.concat(args, " "))
	return
	else
		TriggerClientEvent("lastAOPMessage", source, source, lastAOPSet, lastAOP)
		return
	end
end, false)

-- Made by Voxty
-- For support join the discord
-- https://discord.gg/PgxGQyqgsP