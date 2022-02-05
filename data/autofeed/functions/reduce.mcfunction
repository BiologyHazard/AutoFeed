# execute if entity @s[nbt={Item: {Count: 1b}}] run kill @s
execute store result score @s af_item_count run data get entity @s Item.Count
scoreboard players remove @s af_item_count 1
execute store result entity @s Item.Count byte 1.0 run scoreboard players get @s af_item_count
