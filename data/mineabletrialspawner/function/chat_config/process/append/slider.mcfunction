# Add name
$data modify storage config_system:mineabletrialspawner menu append value {text:"$(name)",color:"white"}
data modify storage config_system:mineabletrialspawner menu append value " "

# Add decrease button
$data modify storage config_system:mineabletrialspawner menu append value {text:"[-]",color:"red",click_event:{action:"run_command",command:"/$(command_decrease)"}}
data modify storage config_system:mineabletrialspawner menu append value " "

# Add current value
$data modify storage config_system:mineabletrialspawner menu append value {score:{objective:"$(scoreboard)",name:"$(score_holder)"}}
data modify storage config_system:mineabletrialspawner menu append value " "

# Add increase button
$data modify storage config_system:mineabletrialspawner menu append value {text:"[+]",color:"green",click_event:{action:"run_command",command:"/$(command_increase)"}}

# Line break
function mineabletrialspawner:chat_config/process/append/handle/line_break

# Add description if there
execute if data storage config_system:mineabletrialspawner current_option.description run function mineabletrialspawner:chat_config/process/append/handle/description with storage config_system:mineabletrialspawner current_option

# Line break
function mineabletrialspawner:chat_config/process/append/handle/line_break




