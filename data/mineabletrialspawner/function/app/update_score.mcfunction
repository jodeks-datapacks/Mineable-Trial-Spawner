schedule function mineabletrialspawner:app/update_score 5s

execute as @a unless score @s break_spawner.mineabletrialspawner = @s break_spawner.mineabletrialspawner run scoreboard players set @s break_spawner.mineabletrialspawner 1

execute as @a unless score @s break_vault.mineabletrialspawner = @s break_vault.mineabletrialspawner run scoreboard players set @s break_vault.mineabletrialspawner 1