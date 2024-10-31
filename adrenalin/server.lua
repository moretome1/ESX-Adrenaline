ESX = exports["es_extended"]:getSharedObject()



ESX.RegisterUsableItem('Adrenaline', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_syringe:use', source)
    xPlayer.removeInventoryItem('Adrenaline', 1)      
end)
