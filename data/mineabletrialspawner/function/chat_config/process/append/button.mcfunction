# Add button
$data modify storage config_system:mineabletrialspawner menu append value {text:" [$(name)] ",color:"aqua",click_event:{action:"run_command",command:"/$(command)"}}

# Line break
function mineabletrialspawner:chat_config/process/append/handle/line_break

# Add description if there
execute if data storage config_system:mineabletrialspawner current_option.description run function mineabletrialspawner:chat_config/process/append/handle/description with storage config_system:mineabletrialspawner current_option

# Line break
function mineabletrialspawner:chat_config/process/append/handle/line_break


