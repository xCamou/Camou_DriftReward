fx_version 'cerulean'
game 'gta5'

description 'ESX Drift Reward System'

shared_script 'config.lua'

client_scripts {
    'client.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'server.lua',
}
