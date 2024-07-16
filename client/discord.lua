local appID, options = Disc.dsc.appID, Disc.dsc.options
local img1, img2 = Disc.dsc.img1, Disc.dsc.img2
local txt1, txt2 = Disc.dsc.img1_txt, Disc.dsc.img2_txt
local updt, plct, plmx = Disc.dsc.update, Disc.dsc.displayCount, Disc.dsc.playerMax

CreateThread(function()
    while Disc.dsc.isActive do
        SetDiscordAppId(appID)

        -- set large icon / text
        SetDiscordRichPresenceAsset(img1)
        SetDiscordRichPresenceAssetText(txt1)

        -- set small icon / text
        SetDiscordRichPresenceAssetSmall(img2)
        SetDiscordRichPresenceAssetSmallText(txt2)

        -- set player count via framework option
        if plct then
            local result = GetNumberOfPlayers()
            SetRichPresence('Players: ' .. result .. '/' .. plmx)
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