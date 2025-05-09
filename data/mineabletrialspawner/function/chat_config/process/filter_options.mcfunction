
# clear options
data remove storage config_system:mineabletrialspawner options
data modify storage config_system:mineabletrialspawner options set value []

# Get current page 
scoreboard players operation #current_page chat_config.mineabletrialspawner = #current_page chat_config.mineabletrialspawner

# recursive filter options
function mineabletrialspawner:chat_config/process/filter_options_recursive