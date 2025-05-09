scoreboard players set &break_vault_silktouch config.mineabletrialspawner 0
execute if score &break_vault_pickaxe config.mineabletrialspawner matches 1 run scoreboard players set @s break_vault.mineabletrialspawner 1
execute if score &break_vault_pickaxe config.mineabletrialspawner matches 0 run scoreboard players set @s break_vault.mineabletrialspawner 0

function mineabletrialspawner:config/chat_config

playsound block.wooden_button.click_off master @s