#> tooexpensiveremoved:app/main.mcfunction
# Execute each minecraft tick

# Listen for help
scoreboard players enable @a help.tooexpensiveremoved
execute as @a if score @s help.tooexpensiveremoved matches 1 run function tooexpensiveremoved:app/help/trigger_help

# Get repair cost
execute store result score @a tooexpensiveremoved.check run data get entity @a[limit=1] SelectedItem.components.minecraft:repair_cost

# Execute replace item
execute as @a[scores={tooexpensiveremoved.check=30..}] run function tooexpensiveremoved:app/item/replace_item with storage tooexpensiveremoved:root