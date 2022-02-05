function autofeed:info

scoreboard objectives add af_parameters dummy
scoreboard players set #activated af_parameters 1
execute unless score #default_player_enabled af_parameters matches -2147483648..2147483647 run scoreboard players set #default_player_enabled af_parameters 1
execute unless score #feed_not_throwed_by_players af_parameters matches -2147483648..2147483647 run scoreboard players set #feed_not_throwed_by_players af_parameters 1

scoreboard objectives add autofeed_enable trigger "启用AutoFeed"
scoreboard objectives add autofeed_disable trigger "停用AutoFeed"

scoreboard objectives add af_UUID0 dummy
scoreboard objectives add af_UUID1 dummy
scoreboard objectives add af_UUID2 dummy
scoreboard objectives add af_UUID3 dummy

scoreboard objectives add af_item_count dummy
