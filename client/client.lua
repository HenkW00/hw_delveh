ESX = exports["es_extended"]:getSharedObject()
local staff = false

RegisterNetEvent("delall")
AddEventHandler("delall", function ()
    if Config.alerts then
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 5 minuut. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(400000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 4 minuut. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(300000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 3 minuut. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(200000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 2 minuut. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(100000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 1 minuut. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(30000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 30 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(15000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 15 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(5000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 10 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(5000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 5 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(1000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 4 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(1000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 3 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(1000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 2 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(1000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 1 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(1000)
    end
    Citizen.Wait(1000) 
    for vehicle in EnumerateVehicles() do            
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then 
            if Config.OnlyWipeBroken == true then
                if GetVehicleEngineHealth(vehicle) <= 100.0 then
                    SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
                    SetEntityAsMissionEntity(vehicle, false, false) 
                    DeleteVehicle(vehicle)
                    if Config.UseESX then
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                    DeleteVehicle(vehicle) 
                    if Config.UseESX then
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                    if (DoesEntityExist(vehicle)) then 
                        DeleteVehicle(vehicle) 
                        if Config.UseESX then
                            ESX.Game.DeleteVehicle(vehicle)
                        end
                        DeleteEntity(vehicle)
                        DeleteVehicle(vehicle)
                        if Config.UseESX then 
                            ESX.Game.DeleteVehicle(vehicle)
                        end
                        DeleteEntity(vehicle)
                    end
                end
            else
                SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
                SetEntityAsMissionEntity(vehicle, false, false) 
                DeleteVehicle(vehicle)
                if Config.UseESX then
                    ESX.Game.DeleteVehicle(vehicle)
                end
                DeleteEntity(vehicle)
                DeleteVehicle(vehicle)
                if Config.UseESX then
                    ESX.Game.DeleteVehicle(vehicle)
                end
                DeleteEntity(vehicle)
                if (DoesEntityExist(vehicle)) then
                    DeleteVehicle(vehicle)
                    if Config.UseESX then
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                    DeleteVehicle(vehicle)
                    if Config.UseESX then
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                end
            end
            if Config.use10msdelay then
                Citizen.Wait(10)
            end
        end
    end
    if Config.DoneNotify then
        -- TriggerEvent('chat:addMessage', {
        --     template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(202, 45, 45, 1); border-radius: 3px;"><i class="fas fa-car-crash"></i> {0}:<br> {1}</div>',
        --     args = { 'CarWipe', 'Carwipe voltooid.' }
        -- })

        exports['okokNotify']:Alert("Car Wipe", "Carwipe voltooid", 3000, 'success')
    end
end)


RegisterNetEvent("delallfast")
AddEventHandler("delallfast", function ()
    if Config.alerts then
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 30 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(15000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 15 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(5000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 10 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(5000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 5 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(1000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 4 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(1000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 3 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(1000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 2 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(1000)
        exports['okokNotify']:Alert("Car Wipe", "Alle voertuigen verdwijnen in 1 seconden. Wil je niet dat dit met JOUW voertuig gebeurd?, maak dan gebruik van JOUW voertuig", 3000, 'warning')
        Citizen.Wait(1000)
    end
    Citizen.Wait(1000) 
    for vehicle in EnumerateVehicles() do            
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then 
            if Config.OnlyWipeBroken == true then
                if GetVehicleEngineHealth(vehicle) <= 100.0 then
                    SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
                    SetEntityAsMissionEntity(vehicle, false, false) 
                    DeleteVehicle(vehicle)
                    if Config.UseESX then
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                    DeleteVehicle(vehicle) 
                    if Config.UseESX then
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                    if (DoesEntityExist(vehicle)) then 
                        DeleteVehicle(vehicle) 
                        if Config.UseESX then
                            ESX.Game.DeleteVehicle(vehicle)
                        end
                        DeleteEntity(vehicle)
                        DeleteVehicle(vehicle)
                        if Config.UseESX then 
                            ESX.Game.DeleteVehicle(vehicle)
                        end
                        DeleteEntity(vehicle)
                    end
                end
            else
                SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
                SetEntityAsMissionEntity(vehicle, false, false) 
                DeleteVehicle(vehicle)
                if Config.UseESX then
                    ESX.Game.DeleteVehicle(vehicle)
                end
                DeleteEntity(vehicle)
                DeleteVehicle(vehicle)
                if Config.UseESX then
                    ESX.Game.DeleteVehicle(vehicle)
                end
                DeleteEntity(vehicle)
                if (DoesEntityExist(vehicle)) then
                    DeleteVehicle(vehicle)
                    if Config.UseESX then
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                    DeleteVehicle(vehicle)
                    if Config.UseESX then
                        ESX.Game.DeleteVehicle(vehicle)
                    end
                    DeleteEntity(vehicle)
                end
            end
            if Config.use10msdelay then
                Citizen.Wait(10)
            end
        end
    end
    if Config.DoneNotify then
        -- TriggerEvent('chat:addMessage', {
        --     template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(202, 45, 45, 1); border-radius: 3px;"><i class="fas fa-car-crash"></i> {0}:<br> {1}</div>',
        --     args = { 'CarWipe', 'Carwipe voltooid.' }
        -- })

        exports['okokNotify']:Alert("Car Wipe", "Carwipe voltooid", 3000, 'success')
    end
end)