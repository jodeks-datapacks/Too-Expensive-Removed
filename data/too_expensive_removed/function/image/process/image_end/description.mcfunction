# Append blank
function too_expensive_removed:image/process/append/blank

data modify storage too_expensive_removed:image data.tellraw append \
  from storage too_expensive_removed:image data.current.description_text

# Append blank
function too_expensive_removed:image/process/append/blank

# Append line_break
execute unless score $index.image_data too_expensive_removed.image = $length too_expensive_removed.image \
  run function too_expensive_removed:image/process/append/line_break

# Remove first element from the description
data remove storage too_expensive_removed:image data.current.description[0]
 