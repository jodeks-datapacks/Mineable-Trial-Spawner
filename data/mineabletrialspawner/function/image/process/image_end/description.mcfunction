# Append blank
function mineabletrialspawner:image/process/append/blank

data modify storage mineabletrialspawner:image tellraw append \
  from storage mineabletrialspawner:image current.description_text

# Append blank
function mineabletrialspawner:image/process/append/blank

# Append line_break
execute unless score $index.image_data mineabletrialspawner.image = $length mineabletrialspawner.image \
  run function mineabletrialspawner:image/process/append/line_break

# Remove first element from the description
data remove storage mineabletrialspawner:image current.description[0]
 