local fmwk = Shared.dsc.framework
local appID, options = Shared.dsc.appID, Shared.dsc.options
local img1, img2 = Shared.dsc.img1, Shared.dsc.img2
local txt1, txt2 = Shared.dsc.img1_txt, Shared.dsc.img2_txt
local updt, plct, plmx = Shared.dsc.update, Shared.dsc.displayCount, Shared.dsc.playerMax

local getPlayer_Ox = function()

end

local getPlayer_Esx = function()
    
end

local getPlayer_Qb = function()
    
end

CreateThread(function()
    while Shared.dsc.isActive do
        -- get app id
        SetDiscordAppId(appID)
        -- set large icon / text
        SetDiscordRichPresenceAsset(img1)
        SetDiscordRichPresenceAssetText(txt1)
        -- set small icon / text
        SetDiscordRichPresenceAssetSmall(img2)
        SetDiscordRichPresenceAssetSmallText(txt2)

        -- set player count via framework option
        if plct then
            if fmwk == "ox" then
                local result = getPlayer_Ox()
                SetRichPresence('Players: ' .. result .. '/' .. plmx)
            elseif fmwk == "esx" then
                local result = getPlayer_Esx()
                SetRichPresence('Players: ' .. result .. '/' .. plmx)
            elseif fmwk == "qb" then
                local result = getPlayer_Qb()
                SetRichPresence('Players: ' .. result .. '/' .. plmx)
            else
                print('Discord Presence: Unable to obtain framework')
                print('Please check your variable in shared/discord.lua')
            end
        end

        -- set buttons for players
        if options then
            for i, v in pairs(options) do
                SetDiscordRichPresenceAction(i - 1, v.text, v.link)
            end
        end

        -- period to call again
        Citizen.Wait(updt)
    end
end)