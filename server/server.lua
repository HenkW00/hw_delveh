RegisterCommand(Config.commandName, function(source, args, rawCommand) TriggerClientEvent("delall", -1) end, Config.restricCommand)

RegisterCommand(Config.commandNameFast, function(source, args, rawCommand) TriggerClientEvent("delallfast", -1) end, Config.restricCommand)

function CleanUpCronTask(d, h, m)
  TriggerClientEvent("delall", -1)
end


if Config.alerts then
  TriggerEvent('cron:runAt', 0, 55, CleanUpCronTask) -- time to run 
  TriggerEvent('cron:runAt', 3, 55, CleanUpCronTask)
  TriggerEvent('cron:runAt', 6, 55, CleanUpCronTask)
  TriggerEvent('cron:runAt', 9, 55, CleanUpCronTask)
  TriggerEvent('cron:runAt', 12, 55, CleanUpCronTask)
  TriggerEvent('cron:runAt', 15, 55, CleanUpCronTask)
  TriggerEvent('cron:runAt', 18, 55, CleanUpCronTask)
  TriggerEvent('cron:runAt', 21, 55, CleanUpCronTask)
end