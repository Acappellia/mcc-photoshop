tag @s add photo_holder

execute at @s if score @s ps_holding_photo matches 0.. run function ps:photo/summon
scoreboard players set @s ps_holding_photo -2

execute at @s anchored eyes positioned ^ ^ ^1 facing entity @s eyes as @e[type=item_display,distance=..10,tag=ps_photo] if score @s ps_player_id = @p[distance=..5,tag=photo_holder] ps_player_id run function ps:photo/tp2p

tag @s remove photo_holder