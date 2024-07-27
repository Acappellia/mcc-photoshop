data merge entity @s {transformation:[10000,0,0,0,0,10000,0,0,0,0,1,0,0,0,0,20000],item:{id:"black_concrete",count:1},teleport_duration:3}
tag @s add ps_photo
tag @s add ps_photo_base
scoreboard players operation @s ps_player_id = @p[distance=..10,tag=photo_holder] ps_player_id