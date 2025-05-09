# Add header
data modify storage config_system:mineabletrialspawner menu append value {"text":"","color":"white",bold:true}
$data modify storage config_system:mineabletrialspawner menu[-1].text set value "$(name)"

# Add description if there
execute if data storage config_system:mineabletrialspawner current_option.description run function mineabletrialspawner:chat_config/process/append/handle/description with storage config_system:mineabletrialspawner current_option

# Line break
function mineabletrialspawner:chat_config/process/append/handle/line_break


