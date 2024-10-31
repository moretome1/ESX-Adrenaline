ESX = exports["es_extended"]:getSharedObject()



ESX.RegisterUsableItem('syringe', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    print("Syringe used by player:", source)  -- Debugging line to check if server event fires
    TriggerClientEvent('esx_syringe:use', source)
    xPlayer.removeInventoryItem('syringe', 1)      
end)
