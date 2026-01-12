#> tooexpensiveremoved:app/setup
# Called on load

# Initiate all scoreboard objectives
scoreboard objectives add tooexpensiveremoved.image dummy

scoreboard objectives add tooexpensiveremoved.check dummy

# Print the image
function tooexpensiveremoved:config/image

advancement revoke @a only tooexpensiveremoved:inventory_changed