# init array
data remove storage config_system:mineabletrialspawner menu
data modify storage config_system:mineabletrialspawner menu set value []

# Add title
# Line break
function mineabletrialspawner:chat_config/process/append/handle/line_break

$data modify storage config_system:mineabletrialspawner menu append value {text:"$(title)",bold:true}

# Line break
function mineabletrialspawner:chat_config/process/append/handle/line_break

data modify storage config_system:mineabletrialspawner menu append value {text:"\u00A7m                                          ",color:"dark_gray"}

# Line break
function mineabletrialspawner:chat_config/process/append/handle/line_break
# Line break
function mineabletrialspawner:chat_config/process/append/handle/line_break

# Store options in mineabletrialspawner storage
$data modify storage config_system:mineabletrialspawner options set value $(options)

scoreboard players set #pagination_enabled chat_config.mineabletrialspawner 0
# Process options for current page
function mineabletrialspawner:chat_config/process/options

# pagination type + store data
execute if score #pagination_enabled chat_config.mineabletrialspawner matches 1 run data modify storage config_system:mineabletrialspawner pagination set from storage config_system:mineabletrialspawner options[-1]
execute if score #pagination_enabled chat_config.mineabletrialspawner matches 1 run data remove storage config_system:mineabletrialspawner options[-1]

# Get current page from selector
$execute if score #pagination_enabled chat_config.mineabletrialspawner matches 1 run execute store result score #current_page chat_config.mineabletrialspawner run scoreboard players get $(target) chat_config.mineabletrialspawner.page

# Ensure current page is at least 1
execute if score #pagination_enabled chat_config.mineabletrialspawner matches 1 run execute if score #current_page chat_config.mineabletrialspawner matches ..0 run scoreboard players set #current_page chat_config.mineabletrialspawner 1

# copy of all options
data modify storage config_system:mineabletrialspawner all_options set from storage config_system:mineabletrialspawner options

# Filter options for current page
function mineabletrialspawner:chat_config/process/filter_options

# Add pagination
execute if score #pagination_enabled chat_config.mineabletrialspawner matches 1 run function mineabletrialspawner:chat_config/process/pagination

# Display
$tellraw $(target) {nbt:"menu[]",storage:"config_system:mineabletrialspawner",interpret:true,separator:""}