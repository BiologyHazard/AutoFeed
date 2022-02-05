function autofeed:trigger/enable_trigger
function autofeed:trigger/trigger

execute as @e[type=minecraft:item,tag=!af_not_food,tag=!af_thrower_disabled,tag=!af_thrower_enabled] at @s run function autofeed:check
execute as @e[tag=af_thrower_enabled] at @s run function autofeed:search
