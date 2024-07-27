data modify entity @s {} merge from storage ps:tmp photo_data[0]
data modify entity @s teleport_duration set value 3
scoreboard players operation @s ps_player_id = @p[distance=..10,tag=photo_holder] ps_player_id