scoreboard objectives add jodek.config dummy
execute unless score &mineable_trial_spawner_load_message jodek.config = &mineable_trial_spawner_load_message jodek.config run scoreboard players set &mineable_trial_spawner_load_message jodek.config 1
execute unless score &mineable_trial_spawner_advancements jodek.config = &mineable_trial_spawner_advancements jodek.config run scoreboard players set &mineable_trial_spawner_advancements jodek.config 1

scoreboard objectives add mineable_trial_spawner.config trigger

scoreboard players set @a mineable_trial_spawner.config 0

execute unless score &break_spawner_pickaxe mineable_trial_spawner.config = &break_spawner_pickaxe mineable_trial_spawner.config run data modify storage mineable_trial_spawner:root data.break_spawner_pickaxe set value 1
execute unless score &break_spawner_pickaxe mineable_trial_spawner.config = &break_spawner_pickaxe mineable_trial_spawner.config run data modify storage mineable_trial_spawner:root data.break_spawner_silktouch set value 0
execute unless score &break_spawner_pickaxe mineable_trial_spawner.config = &break_spawner_pickaxe mineable_trial_spawner.config run data modify storage mineable_trial_spawner:root data.dialog_break_spawner_pickaxe set value "$(dialog_break_spawner_pickaxe)"

execute unless score &break_spawner_pickaxe mineable_trial_spawner.config = &break_spawner_pickaxe mineable_trial_spawner.config run scoreboard players set &break_spawner_pickaxe mineable_trial_spawner.config 1

execute unless score &break_vault_pickaxe mineable_trial_spawner.config = &break_vault_pickaxe mineable_trial_spawner.config run data modify storage mineable_trial_spawner:root data.break_vault_pickaxe set value 1
execute unless score &break_vault_pickaxe mineable_trial_spawner.config = &break_vault_pickaxe mineable_trial_spawner.config run data modify storage mineable_trial_spawner:root data.break_vault_silktouch set value 0
execute unless score &break_vault_pickaxe mineable_trial_spawner.config = &break_vault_pickaxe mineable_trial_spawner.config run data modify storage mineable_trial_spawner:root data.dialog_break_vault_pickaxe set value "$(dialog_break_vault_pickaxe)"

execute unless score &break_vault_pickaxe mineable_trial_spawner.config = &break_vault_pickaxe mineable_trial_spawner.config run scoreboard players set &break_vault_pickaxe mineable_trial_spawner.config 1

scoreboard objectives add mineable_trial_spawner.image dummy

function mineable_trial_spawner:config/image