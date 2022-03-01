scoreboard players set @s autofeed_enable 0

tag @s add af_autofeed_enabled
tag @s remove af_autofeed_disabled

tellraw @s ["",{"text":"[Auto Feed]","bold":true,"color":"yellow"},{"text":" The food you dropped "},{"text":"WILL","bold":true,"color":"green"},{"text":" be auto fed."}]
