RegisterNetEvent("drift:finish")
AddEventHandler("drift:finish", function(score)

    if score and score > 0 then
        TriggerServerEvent("drift:rewardPlayer", math.floor(score))
    end
end)
