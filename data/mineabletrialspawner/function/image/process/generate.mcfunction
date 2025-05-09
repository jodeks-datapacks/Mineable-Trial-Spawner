#> mineabletrialspawner:image/process/generate
#
# This function generates the image data.

data modify storage mineabletrialspawner:image current.image_data set from storage mineabletrialspawner:image image_data
data modify storage mineabletrialspawner:image current.description set from storage mineabletrialspawner:image description
data modify storage mineabletrialspawner:image current.pixel_character set from storage mineabletrialspawner:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data mineabletrialspawner.image 0
# Set width
execute store result score $width mineabletrialspawner.image run data get storage mineabletrialspawner:image width
# Set height
execute store result score $height mineabletrialspawner.image run data get storage mineabletrialspawner:image height
# Set length
scoreboard players operation $length mineabletrialspawner.image = $width mineabletrialspawner.image
scoreboard players operation $length mineabletrialspawner.image *= $height mineabletrialspawner.image
# Clear remaining entries in tellraw
data remove storage mineabletrialspawner:image tellraw

# Add spacing on top
function mineabletrialspawner:image/process/append/line_break
# Loop over image data
function mineabletrialspawner:image/process/loop_over_image_data
# Add spacing on bottom
function mineabletrialspawner:image/process/append/line_break