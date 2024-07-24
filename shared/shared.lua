Shared, Data = {}, {}
Debug = true

--[[    Server Preferences    ]]--

-- disables peds from dropping weapons on death
Shared.disable_weapondrop = true

-- disable native dispatch services
Shared.disable_dispatch = true

-- disables key that enables vehicle radios
Shared.disable_radios = true

-- disables timed idle camera
Shared.disable_idlecam = true

-- disables native hud
Shared.disable_defaulthud = true

-- disables native aiming reticle
Shared.disable_aimreticle = true

-- adjust water intensity (0.0 - normal, 1.0 - smooth, 3.0 intense)
Shared.adjust_water = { active = true, value = 0.7}

-- set player skills
Shared.adjust_skills = true

-- adjust values for player skills
Shared.skills = {

    -- dampens recoil, reduces reload time, and heightens accuracy
    shooting = { value = 50,active = true },

    -- how long the player can run, swim, or bike until exhausted
    stamina = { value = 50, active = true },

    -- boosts melee damage, ladder climbing speed, and reduces damage taken
    strength = { value = 50, active = true },

    -- how long the player can hold their breath until taking damage
    breathing = { value = 50, active = true },

    -- player manages take off, landing, and turbulence better
    flying = { value = 50, active = true },

    -- manages how quickly and quietly player moves in stealth mode
    stealth = { value = 50, active = true },

}