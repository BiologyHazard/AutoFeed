execute if entity @s[nbt={Item: {id: "minecraft:wheat"}}] run tag @s add af_wheat
execute if entity @s[nbt={Item: {id: "minecraft:carrot"}}] run tag @s add af_carrot
execute if entity @s[nbt={Item: {id: "minecraft:potato"}}] run tag @s add af_potato
execute if entity @s[nbt={Item: {id: "minecraft:beetroot"}}] run tag @s add af_beetroot
execute if entity @s[nbt={Item: {id: "minecraft:wheat_seeds"}}] run tag @s add af_wheat_seeds
execute if entity @s[nbt={Item: {id: "minecraft:pumpkin_seeds"}}] run tag @s add af_pumpkin_seeds
execute if entity @s[nbt={Item: {id: "minecraft:melon_seeds"}}] run tag @s add af_melon_seeds
execute if entity @s[nbt={Item: {id: "minecraft:beetroot_seeds"}}] run tag @s add af_beetroot_seeds
tag @s[tag=!af_wheat,tag=!af_carrot,tag=!af_potato,tag=!af_beetroot,tag=!af_wheat_seeds,tag=!af_pumpkin_seeds,tag=!af_melon_seeds,tag=!af_beetroot_seeds] add af_not_food
execute if entity @s[tag=!af_not_food] run function autofeed:check_thrower_enabled
