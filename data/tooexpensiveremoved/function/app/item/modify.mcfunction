advancement revoke @s only tooexpensiveremoved:inventory_changed

summon armor_stand ~ ~100 ~ {Invisible:1b,Marker:1b,Tags:["too_expensive_removed"]}

item replace entity @e[type=armor_stand,tag=too_expensive_removed] weapon.mainhand from entity @s player.cursor

execute store result score @s tooexpensiveremoved.check run data get entity @e[type=armor_stand,tag=too_expensive_removed,limit=1] equipment.mainhand.components."minecraft:repair_cost"

execute if score @s tooexpensiveremoved.check matches 10.. run item modify entity @s player.cursor tooexpensiveremoved:repair_cost

kill @e[type=armor_stand,tag=too_expensive_removed]