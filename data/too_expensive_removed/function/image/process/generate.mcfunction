#> too_expensive_removed:image/process/generate
#
# This function generates the image data.

data modify storage too_expensive_removed:image data.current.image_data set from storage too_expensive_removed:image data.image_data
data modify storage too_expensive_removed:image data.current.description set from storage too_expensive_removed:image data.description
data modify storage too_expensive_removed:image data.current.pixel_character set from storage too_expensive_removed:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data too_expensive_removed.image 0
# Set width
execute store result score $width too_expensive_removed.image run data get storage too_expensive_removed:image data.width
# Set height
execute store result score $height too_expensive_removed.image run data get storage too_expensive_removed:image data.height
# Set length
scoreboard players operation $length too_expensive_removed.image = $width too_expensive_removed.image
scoreboard players operation $length too_expensive_removed.image *= $height too_expensive_removed.image
# Clear remaining entries in tellraw
data remove storage too_expensive_removed:image data.tellraw

# Add spacing on top
function too_expensive_removed:image/process/append/line_break
# Loop over image data
function too_expensive_removed:image/process/loop_over_image_data
# Add spacing on bottom
function too_expensive_removed:image/process/append/line_break