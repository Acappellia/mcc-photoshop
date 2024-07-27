tag @s add photo_holder
execute at @s positioned ^ ^ ^1 facing entity @s eyes as @e[type=item_display,distance=..10,tag=ps_photo] if score @s ps_player_id = @p[distance=..5,tag=photo_holder] ps_player_id run kill @s
tag @s remove photo_holder