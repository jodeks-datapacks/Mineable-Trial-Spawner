
# Check options to process
execute unless data storage config_system:mineabletrialspawner options[0] run return 0

# Process first option
data modify storage config_system:mineabletrialspawner current_option set from storage config_system:mineabletrialspawner options[0]

# run based on option type
execute if data storage config_system:mineabletrialspawner current_option{type:"toggle"} run function mineabletrialspawner:chat_config/process/append/toggle with storage config_system:mineabletrialspawner current_option
execute if data storage config_system:mineabletrialspawner current_option{type:"slider"} run function mineabletrialspawner:chat_config/process/append/slider with storage config_system:mineabletrialspawner current_option
execute if data storage config_system:mineabletrialspawner current_option{type:"button"} run function mineabletrialspawner:chat_config/process/append/button with storage config_system:mineabletrialspawner current_option
execute if data storage config_system:mineabletrialspawner current_option{type:"header"} run function mineabletrialspawner:chat_config/process/append/header with storage config_system:mineabletrialspawner current_option
execute if data storage config_system:mineabletrialspawner current_option{type:"pagination"} run scoreboard players set #pagination_enabled chat_config.mineabletrialspawner 1

# remove processed option
data remove storage config_system:mineabletrialspawner options[0]

# recursive call all options
function mineabletrialspawner:chat_config/process/options


