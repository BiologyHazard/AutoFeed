execute as @a if score @s home matches -2147483648..2147483647 unless score @s autofeed_enable matches 0 run function autofeed:trigger/autofeed_enable
execute as @a if score @s home matches -2147483648..2147483647 unless score @s autofeed_disable matches 0 run function autofeed:trigger/autofeed_disable
