--    #    ####### #          #    #     # #######    #        #####   #####  ######  ### ######  #######  ##### 
--   # #      #    #         # #   ##    #    #      # #      #     # #     # #     #  #  #     #    #    #     # 
--  #   #     #    #        #   #  # #   #    #     #   #     #       #       #     #  #  #     #    #    #       
-- #     #    #    #       #     # #  #  #    #    #     #     #####  #       ######   #  ######     #     #####  
-- #######    #    #       ####### #   # #    #    #######          # #       #   #    #  #          #          # 
-- #     #    #    #       #     # #    ##    #    #     #    #     # #     # #    #   #  #          #    #     # 
-- #     #    #    ####### #     # #     #    #    #     #     #####   #####  #     # ### #          #     #####  

-- DISCORD SERVER: https://discord.gg/sCMKeZHxS5

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        if IsPedFalling(PlayerPedId()) or IsPedInParachuteFreeFall(PlayerPedId()) then
            SetEntityCanBeDamaged(PlayerPedId(), false)
        else
            SetEntityCanBeDamaged(PlayerPedId(), true)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(200)
        local Ped = GetPlayerPed(-1)
        SetPedCanRagdoll(Ped, false)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        if IsPedGettingUp(PlayerPedId()) then
            ClearPedTasksImmediately(PlayerPedId(), true)
        end
    end
end)
