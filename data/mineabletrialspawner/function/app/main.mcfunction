scoreboard players enable @a help.mineabletrialspawner
execute as @a if score @s help.mineabletrialspawner matches 1 run function mineabletrialspawner:app/help

scoreboard players enable @a mineabletrialspawner.config
execute as @a if score @s mineabletrialspawner.config matches 1 run function mineabletrialspawner:config/chat_config