tag @e remove af_to_feed
execute if entity @s[tag=af_wheat] unless entity @e[tag=af_to_feed] as @e[type=minecraft:cow, distance=..5, nbt={Age: 0, InLove: 0}, sort=nearest, limit=1] run tag @s add af_to_feed
execute if entity @s[tag=af_wheat] unless entity @e[tag=af_to_feed] as @e[type=minecraft:sheep, distance=..5, nbt={Age: 0, InLove: 0}, sort=nearest, limit=1] run tag @s add af_to_feed
execute if entity @s[tag=af_wheat] unless entity @e[tag=af_to_feed] as @e[type=minecraft:goat, distance=..5, nbt={Age: 0, InLove: 0}, sort=nearest, limit=1] run tag @s add af_to_feed
execute if entity @s[tag=af_wheat] unless entity @e[tag=af_to_feed] as @e[type=minecraft:mooshroom, distance=..5, nbt={Age: 0, InLove: 0}, sort=nearest, limit=1] run tag @s add af_to_feed
execute if entity @s[tag=af_carrot] unless entity @e[tag=af_to_feed] as @e[type=minecraft:pig, distance=..5, nbt={Age: 0, InLove: 0}, sort=nearest, limit=1] run tag @s add af_to_feed
execute if entity @s[tag=af_potato] unless entity @e[tag=af_to_feed] as @e[type=minecraft:pig, distance=..5, nbt={Age: 0, InLove: 0}, sort=nearest, limit=1] run tag @s add af_to_feed
execute if entity @s[tag=af_beetroot] unless entity @e[tag=af_to_feed] as @e[type=minecraft:pig, distance=..5, nbt={Age: 0, InLove: 0}, sort=nearest, limit=1] run tag @s add af_to_feed
execute if entity @s[tag=af_wheat_seeds] unless entity @e[tag=af_to_feed] as @e[type=minecraft:chicken, distance=..5, nbt={Age: 0, InLove: 0}, sort=nearest, limit=1] run tag @s add af_to_feed
execute if entity @s[tag=af_pumpkin_seeds] unless entity @e[tag=af_to_feed] as @e[type=minecraft:chicken, distance=..5, nbt={Age: 0, InLove: 0}, sort=nearest, limit=1] run tag @s add af_to_feed
execute if entity @s[tag=af_melon_seeds] unless entity @e[tag=af_to_feed] as @e[type=minecraft:chicken, distance=..5, nbt={Age: 0, InLove: 0}, sort=nearest, limit=1] run tag @s add af_to_feed
execute if entity @s[tag=af_beetroot_seeds] unless entity @e[tag=af_to_feed] as @e[type=minecraft:chicken, distance=..5, nbt={Age: 0, InLove: 0}, sort=nearest, limit=1] run tag @s add af_to_feed

execute as @e[tag=af_to_feed] run data merge entity @s {InLove: 600}
execute as @e[tag=af_to_feed] at @s run particle minecraft:heart ~ ~1 ~ 0.4 0.4 0.4 1 7
execute if entity @e[tag=af_to_feed] run function autofeed:reduce

execute if score @s af_item_count matches 1.. if entity @e[tag=af_to_feed] run function autofeed:search

tag @e remove af_to_feed
