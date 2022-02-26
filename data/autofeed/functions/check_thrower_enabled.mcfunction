execute store result score @s af_UUID0 run data get entity @s Thrower[0]
execute store result score @s af_UUID1 run data get entity @s Thrower[1]
execute store result score @s af_UUID2 run data get entity @s Thrower[2]
execute store result score @s af_UUID3 run data get entity @s Thrower[3]

execute as @a store result score @s af_UUID0 run data get entity @s UUID[0]
execute as @a store result score @s af_UUID1 run data get entity @s UUID[1]
execute as @a store result score @s af_UUID2 run data get entity @s UUID[2]
execute as @a store result score @s af_UUID3 run data get entity @s UUID[3]

tag @s add af_myself
execute as @a if score @s af_UUID0 = @e[tag=af_myself,limit=1] af_UUID0 if score @s af_UUID1 = @e[tag=af_myself,limit=1] af_UUID1 if score @s af_UUID2 = @e[tag=af_myself,limit=1] af_UUID2 if score @s af_UUID3 = @e[tag=af_myself,limit=1] af_UUID3 run tag @s add af_thrower
tag @s remove af_myself

execute if entity @a[tag=af_thrower,tag=af_autofeed_disabled] run tag @s add af_thrower_disabled
execute if entity @a[tag=af_thrower,tag=!af_autofeed_enabled,tag=!af_autofeed_disabled] if score default_player_enabled af_parameters matches 0 run tag @s add af_thrower_disabled
execute unless entity @a[tag=af_thrower] if score feed_not_throwed_by_players af_parameters matches 0 run tag @s add af_thrower_disabled
execute if data entity @s Owner run tag @s add af_thrower_disabled
execute if entity @s[tag=!af_thrower_disabled] run tag @s add af_thrower_enabled

tag @a remove af_thrower
