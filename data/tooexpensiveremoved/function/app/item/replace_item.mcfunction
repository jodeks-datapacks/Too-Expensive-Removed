execute as @s run function tooexpensiveremoved:app/item/get_hotbar_slot

# hotbar.0 mit macro austasuchen
$execute as @s if items entity @s hotbar.$(hotbar_slot) #enchantable/durability run function tooexpensiveremoved:app/item/summon_chest_minecart with storage tooexpensiveremoved:root


