scoreboard players set @a mineabletrialspawner.config 0

# Set options per page - adjust this value as needed
scoreboard players set #total_pages chat_config.mineabletrialspawner 1

execute unless score @s chat_config.mineabletrialspawner.page matches 0.. run scoreboard players set @s chat_config.mineabletrialspawner.page 1

function mineabletrialspawner:chat_config/process/build {\
  title: "Mineable Spawner Config",\
  target: "@s",\
  options: [\
    {\
      type: "header",\
      name: "Trial Spawner",\
    },\
    {\
      type: "toggle",\
      name: "Pickaxe",\
      scoreboard: "config.mineabletrialspawner",\
      score_holder: "&break_spawner_pickaxe",\
      command_on: "execute as @s[scores={operator.check=1}] run function mineabletrialspawner:chat_config/set/enable_spawner/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function mineabletrialspawner:chat_config/set/enable_spawner/command_off"\
    },\
    {\
      type: "toggle",\
      name: "Pickaxe needs silktouch",\
      scoreboard: "config.mineabletrialspawner",\
      score_holder: "&break_spawner_silktouch",\
      command_on: "execute as @s[scores={operator.check=1}] run function mineabletrialspawner:chat_config/set/silktouch_spawner/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function mineabletrialspawner:chat_config/set/silktouch_spawner/command_off"\
    },\
    {\
      type: "header",\
      name: "Vault",\
    },\
    {\
      type: "toggle",\
      name: "Pickaxe",\
      scoreboard: "config.mineabletrialspawner",\
      score_holder: "&break_vault_pickaxe",\
      command_on: "execute as @s[scores={operator.check=1}] run function mineabletrialspawner:chat_config/set/enable_vault/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function mineabletrialspawner:chat_config/set/enable_vault/command_off"\
    },\
    {\
      type: "toggle",\
      name: "Pickaxe needs silktouch",\
      scoreboard: "config.mineabletrialspawner",\
      score_holder: "&break_vault_silktouch",\
      command_on: "execute as @s[scores={operator.check=1}] run function mineabletrialspawner:chat_config/set/silktouch_vault/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function mineabletrialspawner:chat_config/set/silktouch_vault/command_off"\
    }\
  ]\
}