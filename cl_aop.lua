RegisterNetEvent('sendMessageAOP')
AddEventHandler('sendMessageAOP', function(id, name, message)
    TriggerEvent('chatMessage', "", { 19, 147, 251 }, "^6[AOP Set To]: ^0" .. message .. "")
end)

RegisterNetEvent('lastAOPMessage')
AddEventHandler('lastAOPMessage', function(id, name, message)
	TriggerEvent('chatMessage', "", { 19, 147, 251 }, "^6[AOP Currently Is]: ^0" .. message ..  " ^0[Last Set By: (" .. name .. ") ]")
end)

Citizen.CreateThread(function()
    TriggerEvent("chat:addSuggestion", "/aop [AOP]", "Sets/Views the Area of Patrol.")    
end)

-- Made by Voxty
-- For support join the discord
-- https://discord.gg/PgxGQyqgsP