fx_version 'cerulean'
game 'gta5'

description 'SNR-GUNRPENGEL'
version '1.0.0'

ui_page "html/index.html"

client_scripts {
    'config.lua',
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

dependencies {
    'qb-core'
}