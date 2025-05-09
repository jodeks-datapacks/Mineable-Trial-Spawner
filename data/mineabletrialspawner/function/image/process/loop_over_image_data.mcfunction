# Copy current pixel
data modify storage mineabletrialspawner:image current.pixel_color set \
  from storage mineabletrialspawner:image current.image_data[0]
data modify storage mineabletrialspawner:image current.description_text set \
  from storage mineabletrialspawner:image current.description[0]

scoreboard players add $index.image_data mineabletrialspawner.image 1

# Calculate column
scoreboard players operation $index.column mineabletrialspawner.image = $index.image_data mineabletrialspawner.image
scoreboard players operation $index.column mineabletrialspawner.image %= $width mineabletrialspawner.image

# Calculate row
scoreboard players operation $index.row mineabletrialspawner.image = $index.image_data mineabletrialspawner.image
scoreboard players operation $index.row mineabletrialspawner.image /= $width mineabletrialspawner.image

# Append start spacing
execute if score $index.column mineabletrialspawner.image matches 1 run \
  function mineabletrialspawner:image/process/append/blank

# Append colored pixel
execute unless data storage mineabletrialspawner:image current{pixel_color: ''} run \
  function mineabletrialspawner:image/process/append/pixel
# Append background pixel
execute if data storage mineabletrialspawner:image current{pixel_color: ''} run \
  function mineabletrialspawner:image/process/append/background

# Append description
execute if score $index.column mineabletrialspawner.image matches 0 run \
    function mineabletrialspawner:image/process/image_end/description

# Remove first element from the image_data array
data remove storage mineabletrialspawner:image current.image_data[0]
# Loop over rows
execute if score $index.row mineabletrialspawner.image < $height mineabletrialspawner.image run \
  function mineabletrialspawner:image/process/loop_over_image_data
 