--[[    Discord Rich Presence   ]]--

--[[        For Reference       ]]--
-- https://discord.com/developers/docs/rich-presence/how-to

Shared.dsc = {

    -- set framework (use "ox", "esx", or "qb")
    framework = 'fuckin_stuff',

    -- choose to enable / disable presence
    isActive = false,

    -- discord app id
    appID = '00000000000000000',

    -- The name of the large icon
    img1 = 'logo_name',

    -- The hover text of the large icon
    img1_txt = 'This is a Large icon with text',

    -- The name of the small icon
    img2 = 'small_logo_name',

    -- The hover text of the small icon
    img2_txt = 'This is a Small icon with text',

    -- How often the player count should be updated
    update = 60000,

    -- If set to true the player count will be displayed in the rich presence
    displayCount = true,

    -- Maximum amount of players
    playerMax = 48,

    options = {

        { text = 'Join our Discord!', url = 'fivem://connect/localhost:30120' },

        { text = 'Join Our Server!', url = 'fivem://connect/localhost:30120' }
    }
}