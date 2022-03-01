scoreboard players set @s autofeed_disable 0

tag @s add af_autofeed_disabled
tag @s remove af_autofeed_enabled

tellraw @s ["",{"text":"[Auto Feed]","bold":true,"color":"yellow"},{"text":" The food you dropped "},{"text":"WON'T","bold":true,"color":"red"},{"text":" be auto fed."}]
