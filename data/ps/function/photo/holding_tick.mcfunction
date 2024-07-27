tag @s add photo_holder

execute store result score @s ps_holding_photo_id run data get entity @s SelectedItem.components."minecraft:custom_data".photo_id
execute unless score @s ps_last_holding_photo_id = @s ps_holding_photo_id run function ps:photo/reset
scoreboard players operation @s ps_last_holding_photo_id = @s ps_holding_photo_id

execute at @s if score @s ps_holding_photo matches 0.. run function ps:photo/summon
scoreboard players set @s ps_holding_photo -2

execute store result score #facing_photowall ps if predicate ps:facing_photowall
execute at @s anchored eyes positioned ^ ^ ^1 facing entity @s eyes as @e[type=item_display,distance=..20,tag=ps_photo] if score @s ps_player_id = @p[distance=..5,tag=photo_holder] ps_player_id run function ps:photo/tp2p

tag @s remove photo_holder