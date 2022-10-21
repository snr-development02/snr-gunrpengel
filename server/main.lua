local QBCore = exports['qb-core']:GetCoreObject()


QBCore.Functions.CreateCallback('snr-kontrol', function(source,cb)
    cb(GetPlayerIdentifiers(source)[1])
end)