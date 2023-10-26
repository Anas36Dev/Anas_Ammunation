---
--- Script : Anas_Ammunation
--- Author : Anas36Dev
--- DateTime: 08/10/2023 21:47
---

fx_version 'adamant'
game 'gta5'
lua54 'yes'
author 'F&A Shop'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
}

--RageUIx
client_scripts {
    'RageUIx/RageUI.lua',
    'RageUIx/Menu.lua',
    'RageUIx/MenuController.lua',
    'RageUIx/components/*.lua',
    'RageUIx/elements/*.lua',
    'RageUIx/items/*.lua',
}

shared_script {
    "config.lua"
}

client_scripts {
    'client.lua',
}

server_scripts {
    'server.lua'
}
