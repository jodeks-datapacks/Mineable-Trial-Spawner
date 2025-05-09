
scoreboard objectives add help.mineabletrialspawner trigger

scoreboard objectives add break_spawner.mineabletrialspawner dummy
scoreboard objectives add break_vault.mineabletrialspawner dummy

scoreboard objectives add config.mineabletrialspawner dummy

execute as @a unless score &break_spawner_pickaxe config.mineabletrialspawner = &break_spawner_pickaxe config.mineabletrialspawner run scoreboard players set &break_spawner_pickaxe config.mineabletrialspawner 1

execute as @a unless score &break_spawner_silktouch config.mineabletrialspawner = &break_spawner_silktouch config.mineabletrialspawner run scoreboard players set &break_spawner_silktouch config.mineabletrialspawner 0

execute as @a unless score &break_vault_pickaxe config.mineabletrialspawner = &break_vault_pickaxe config.mineabletrialspawner run scoreboard players set &break_vault_pickaxe config.mineabletrialspawner 1

execute as @a unless score &break_vault_silktouch config.mineabletrialspawner = &break_vault_silktouch config.mineabletrialspawner run scoreboard players set &break_vault_silktouch config.mineabletrialspawner 0

scoreboard objectives add mineabletrialspawner.image dummy

scoreboard objectives add mineabletrialspawner.config trigger


function mineabletrialspawner:chat_config/init

function mineabletrialspawner:config/image

schedule function mineabletrialspawner:app/update_score 5s