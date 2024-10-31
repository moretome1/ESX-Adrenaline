ESX = exports["es_extended"]:getSharedObject()

local lastStamina = nil

RegisterNetEvent('esx_syringe:use')
AddEventHandler('esx_syringe:use', function()
    local playerId = PlayerId()
    local playerPed = PlayerPedId()

    if DoesEntityExist(playerPed) then
        SetPedMoveRateOverride(playerPed, 10.0)  
        SetRunSprintMultiplierForPlayer(playerId, 1.49)  

        ResetPlayerStamina(playerId)



        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(100)


                local value = 100 - GetPlayerSprintStaminaRemaining(playerId)
                if lastStamina == nil or lastStamina ~= value then
                    SetStatus('stamina', value)
                    lastStamina = value
                end


                if GetGameTimer() >= (startTime + 30000) then
                    break
                end
            end
        end)


        local startTime = GetGameTimer()

        Citizen.Wait(30000)


        SetPedMoveRateOverride(playerPed, 1.0)
        SetRunSprintMultiplierForPlayer(playerId, 1.0) 

        lastStamina = nil
    end
end)
