---
--- Script : Anas_Ammunation
--- Author : Anas36Dev
--- DateTime: 08/10/2023 21:47
---

Config = {
    Ammunation = {
        Position = { -- You can add positions anywhere
            vector3(20.73, -1106.17, 29.8), 
            vector3(-330.7636, 6083.916, 31.45477),
            vector3(811.5468, -2157.673, 29.61899),
            vector3(-663.5698, -935.0165, 21.82923),
            vector3(252.9612, -48.95065, 69.94104)
        },

        ServerName = "AnasDev", -- Your server name, you can disable it (remove juste name) and leave the quotation marks blank
        NameOnMenu = true, -- Activate or deactivate the name in the main menu
        Webhook = '', -- You can add the webhook link for logs on discord
        NPC = true, -- If you want to disable the NPC, set to false

        ListeDesArmesBlanchesVendus = { -- You can add or remove weapons what are sell (Don't forget to change gun prices)
            {name = "Lampe Torche", prix = 3, weaponName = "weapon_flashlight"},
            {name = "Dague", prix = 3, weaponName = "weapon_dagger"},
            {name = "Poing Américan", prix = 3, weaponName = "weapon_knuckle"},
            {name = "Batte de baseball", prix = 3, weaponName = "weapon_bat"},
            {name = "Bouteille", prix = 3, weaponName = "weapon_bottle"},
            {name = "Pied de biche", prix = 3, weaponName = "weapon_crowbar"},
            {name = "Club de golf", prix = 3, weaponName = "weapon_golfclub"},
            {name = "Marteau", prix = 3, weaponName = "weapon_hammer"},
            {name = "Hache", prix = 3, weaponName = "weapon_hatchet"},
            {name = "Couteau", prix = 3, weaponName = "weapon_knife"},
            {name = "Machette", prix = 3, weaponName = "weapon_machete"},
            {name = "Cran d'arrêt", prix = 3, weaponName = "weapon_switchblade"},
            {name = "Hache de combat", prix = 3, weaponName = "weapon_battleaxe"},
            {name = "Queue de billard", prix = 3, weaponName = "weapon_poolcue"},
            {name = "Clé à molette", prix = 3, weaponName = "weapon_wrench"},
        },

        ListeDesArmesAFeuVendus = { -- You can add or remove weapons what are sell (Don't forget to change gun prices)
            {name = "Berreta 92", prix = 3, weaponName = "weapon_pistol"},
            {name = "Desert Eagle", prix = 3, weaponName = "weapon_pistol50"},
            {name = "Pétoire", prix = 3, weaponName = "weapon_snspistol"},
            {name = "Colt M1911", prix = 3, weaponName = "weapon_heavypistol"},
            {name = "Revolver", prix = 3, weaponName = "weapon_revolver"},
        },
    },
}