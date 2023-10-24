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
    'src/RageUIx/RageUI.lua',
    'src/RageUIx/Menu.lua',
    'src/RageUIx/MenuController.lua',
    'src/RageUIx/components/*.lua',
    'src/RageUIx/elements/*.lua',
    'src/RageUIx/items/*.lua',
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
