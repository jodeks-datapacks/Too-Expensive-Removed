#> too_expensive_removed:app/setup
# Called on load

scoreboard objectives add jodek.config dummy
execute unless score &too_expensive_removed_load_message jodek.config = &too_expensive_removed_load_message jodek.config run scoreboard players set &too_expensive_removed_load_message jodek.config 1
execute unless score &too_expensive_removed_advancements jodek.config = &too_expensive_removed_advancements jodek.config run scoreboard players set &too_expensive_removed_advancements jodek.config 1

# Initiate all scoreboard objectives
scoreboard objectives add too_expensive_removed.image dummy

scoreboard objectives add too_expensive_removed.check dummy

# Print the image
function too_expensive_removed:config/image

advancement revoke @a only too_expensive_removed:inventory_changed