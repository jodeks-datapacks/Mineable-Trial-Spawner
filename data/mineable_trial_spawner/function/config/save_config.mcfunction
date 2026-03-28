$scoreboard players set &break_spawner_pickaxe mineable_trial_spawner.config $(dialog_break_spawner_pickaxe)
$data modify storage mineable_trial_spawner:root data.break_spawner_pickaxe set value $(dialog_break_spawner_pickaxe)
execute if score &break_spawner_pickaxe mineable_trial_spawner.config matches 0 run data modify storage mineable_trial_spawner:root data.break_spawner_silktouch set value 1
execute if score &break_spawner_pickaxe mineable_trial_spawner.config matches 1 run data modify storage mineable_trial_spawner:root data.break_spawner_silktouch set value 0

$scoreboard players set &break_vault_pickaxe mineable_trial_spawner.config $(dialog_break_vault_pickaxe)
$data modify storage mineable_trial_spawner:root data.break_vault_pickaxe set value $(dialog_break_vault_pickaxe)
execute if score &break_vault_pickaxe mineable_trial_spawner.config matches 0 run data modify storage mineable_trial_spawner:root data.break_vault_silktouch set value 1
execute if score &break_vault_pickaxe mineable_trial_spawner.config matches 1 run data modify storage mineable_trial_spawner:root data.break_vault_silktouch set value 0