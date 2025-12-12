ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent("drift:rewardPlayer")
AddEventHandler("drift:rewardPlayer", function(score)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then return end

    local min = Config.MinScore
    local mult = Config.RewardMultiplier

    if score < min then
        return
    end

    local reward = score * mult

    if Config.RoundRewards then
        reward = math.floor(reward)
    end

    xPlayer.addMoney(reward)

    TriggerClientEvent('esx:showAdvancedNotification', source,
        "Drift Master",
        "Belohnung erhalten",
        ("Drift Score: ~y~%s~s~\n | Deine Belohnung: ~g~$%s"):format(score, reward),
        "CHAR_CARSITE",
        1
    )
end)
