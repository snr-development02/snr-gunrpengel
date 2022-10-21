local QBCore = exports['qb-core']:GetCoreObject()


Citizen.CreateThread(function(hex)
  while true do
    Citizen.Wait(500)
    if IsPedArmed(PlayerPedId(), 7) then
      QBCore.Functions.TriggerCallback('snr-kontrol', function(hex)
        if SNR.Cezalilar[hex] then
          if GetSelectedPedWeapon(PlayerPedId()) ==  GetHashKey("weapon_musket") then
          else
          RemoveAllPedWeapons(PlayerPedId(), false)
          SetCurrentPedWeapon(PlayerPedId(), GetHashKey("WEAPON_UNARMED"), true)
          QBCore.Functions.Notify("GunRP Yasağın bulunmakta!", "error") 
          end
        end
      end)
    end
  end
end)