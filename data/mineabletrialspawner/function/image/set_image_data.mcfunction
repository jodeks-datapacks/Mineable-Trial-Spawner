#> mineabletrialspawner:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage mineabletrialspawner:image image_data  
# @writes storage mineabletrialspawner:image width  
# @writes storage mineabletrialspawner:image height  
# @writes storage mineabletrialspawner:image background_color  
# @writes storage mineabletrialspawner:image description  
# @writes storage mineabletrialspawner:image pixel_character.blank  
# @writes storage mineabletrialspawner:image pixel_character.chat  
# @writes storage mineabletrialspawner:image pixel_character.lore

data remove storage mineabletrialspawner:image image_data
data remove storage mineabletrialspawner:image width
data remove storage mineabletrialspawner:image height
data remove storage mineabletrialspawner:image background_color
data remove storage mineabletrialspawner:image description

$data modify storage mineabletrialspawner:image image_data set value $(image_data)
$data modify storage mineabletrialspawner:image width set value $(width)
$data modify storage mineabletrialspawner:image height set value $(height)
$data modify storage mineabletrialspawner:image background_color set value "$(background_color)"
$data modify storage mineabletrialspawner:image description set value $(description)

data modify storage mineabletrialspawner:image pixel_character.blank set value "　"
data modify storage mineabletrialspawner:image pixel_character.pixel set value "▌▌"
data modify storage mineabletrialspawner:image pixel_character.line_break set value '\n'

function mineabletrialspawner:image/process/generate
