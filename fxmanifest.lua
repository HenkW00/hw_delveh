fx_version 'bodacious'
game 'gta5'

author 'HenkW'
description 'A script that allows you to run a carwipe every so often (hours/minutes), this will remove all cars that no one is in to prevent lag. This script does not cause any performance loss.'
version '1.1.3'

server_script {
    'config.lua',
    'server/server.lua',
    'version.lua'
}

client_scripts {
    'config.lua',
    'client/client.lua',
    'client/entityiter.lua'
}

server_scripts { '@mysql-async/lib/MySQL.lua' }

shared_script '@es_extended/imports.lua'