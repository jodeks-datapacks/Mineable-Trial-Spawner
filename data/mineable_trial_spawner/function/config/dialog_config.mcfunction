scoreboard players set @a mineable_trial_spawner.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  title:"Mineable Trial Spawner Config",\
  "body": [\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:trial_spawner"\
      }\
    }\
  ],\
  inputs:[\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_break_spawner_pickaxe",\
      "label": {\
        "translate": "mineable_trial_spawner.config.pickaxe_silktouch_spawner",\
        "fallback": "Trial Spawner - Pickaxe needs silktouch"\
      },\
      "options": [\
        {\
          "id": "1",\
          "display": "No",\
          "initial": $(break_spawner_pickaxe)\
        },\
        {\
          "id": "0",\
          "display": "Yes",\
          "initial": $(break_spawner_silktouch)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_break_vault_pickaxe",\
      "label": {\
        "translate": "mineable_trial_spawner.config.pickaxe_silktouch_vault",\
        "fallback": "Vault - Pickaxe needs silktouch"\
      },\
      "options": [\
        {\
          "id": "1",\
          "display": "No",\
          "initial": $(break_vault_pickaxe)\
        },\
        {\
          "id": "0",\
          "display": "Yes",\
          "initial": $(break_vault_silktouch)\
        }\
      ]\
    }\
  ],\
  columns:1,\
    "exit_action": {\
      "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
    "action": {\
      type:"dynamic/run_command",\
      template:"function mineable_trial_spawner:config/save_config {dialog_break_spawner_pickaxe:$(dialog_break_spawner_pickaxe), dialog_break_vault_pickaxe:$(dialog_break_vault_pickaxe)}"\
    }\
  },\
  actions:[\
    {\
        "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
      "action": {\
        type:"dynamic/run_command",\
        template:"function mineable_trial_spawner:config/save_config {dialog_break_spawner_pickaxe:$(dialog_break_spawner_pickaxe), dialog_break_vault_pickaxe:$(dialog_break_vault_pickaxe)}"\
      }\
    }\
  ]\
}