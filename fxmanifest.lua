fx_version 'cerulean'
game 'gta5'
author 'https://www.github.com/CodineDev' -- Base Refueling System: (https://github.com/InZidiuZ/LegacyFuel), other code by Codine (https://www.github.com/CodineDev).
description 'cdn-fuel'
version '2.1.9'

client_scripts {
    '@qbx_core/modules/playerdata.lua',
    'client/fuel_cl.lua',
    'client/electric_cl.lua',
    'client/station_cl.lua',
    'client/utils.lua'
}

server_scripts {
    'server/fuel_sv.lua',
    'server/station_sv.lua',
    'server/electric_sv.lua',
    '@oxmysql/lib/MySQL.lua',
}

shared_scripts {
    '@ox_lib/init.lua', -- OX_Lib, only line this in if you have ox_lib and are using them.
    '@qbx_core/modules/utils.lua',
    'shared/config.lua',
    '@qbx_core/shared/locale.lua',
    'locales/en.lua',
}

exports {
    'GetFuel',
    'SetFuel'
}

lua54 'yes'

dependencies {
    'interact-sound',
    'ox_lib',
    'ox_target',
}

provide 'cdn-syphoning' -- This is used to override cdn-syphoning(https://github.com/CodineDev/cdn-syphoning) if you have it installed. If you don't have it installed, don't worry about this. If you do, we recommend removing it and using this instead.
