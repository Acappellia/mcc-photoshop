advancement revoke @s only ps:interact_photowall

execute unless score @s ps_holding_photo matches -2 run return -1
execute unless predicate ps:holding_photo run return -1

tag @s add photo_holder
execute as @e[type=item_display,distance=..5,tag=ps_photo_base] if score @s ps_player_id = @p[distance=..5,tag=photo_holder] ps_player_id run data modify entity @s item.components."minecraft:custom_data".photo_data set from entity @p[distance=..10,tag=photo_holder]
execute as @e[type=item_display,distance=..5,tag=ps_photo_base] if score @s ps_player_id = @p[distance=..5,tag=photo_holder] ps_player_id positioned ~ ~-0.5 ~ summon interaction run function ps:photowall/summon_interaction
execute as @e[type=item_display,distance=..5,tag=ps_photo] if score @s ps_player_id = @p[distance=..5,tag=photo_holder] ps_player_id run scoreboard players operation @s ps_wallphoto_id = #new_wallphoto_id ps
execute as @e[type=item_display,distance=..5,tag=ps_photo] if score @s ps_player_id = @p[distance=..5,tag=photo_holder] ps_player_id run scoreboard players reset @s ps_player_id
tag @s remove photo_holder