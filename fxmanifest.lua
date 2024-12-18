fx_version 'cerulean'
game 'gta5'
author 'https://www.github.com/CodineDev' -- Base Refueling System: (https://github.com/InZidiuZ/LegacyFuel), other code by Codine (https://www.github.com/CodineDev).
description 'cdn-fuel'
version '2.1.9'

shared_scripts {
    '@ox_lib/init.lua',
    'shared/config.lua',
    '@qbx_core/shared/locale.lua',
    'locales/en.lua'
}

client_scripts {
    '@qbx_core/modules/playerdata.lua',
    'client/fuel_cl.lua',
    'client/electric_cl.lua',
    'client/utils.lua'
}

server_scripts {
    'server/fuel_sv.lua',
    'server/electric_sv.lua',
    '@oxmysql/lib/MySQL.lua'
}

exports {
    'GetFuel',
    'SetFuel'
}

dependencies {
    'ox_lib',
    'ox_target',
}

provide 'cdn-syphoning' -- This is used to override cdn-syphoning(https://github.com/CodineDev/cdn-syphoning) if you have it installed. If you don't have it installed, don't worry about this. If you do, we recommend removing it and using this instead.

lua54 'yes'
