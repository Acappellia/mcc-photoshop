#determine interaction target
execute store result score #current_time ps run time query gametime
execute as @e[distance=..5,type=interaction,tag=ps_wall_photo] store result score @s ps_interact_time run data get entity @s attack.timestamp
execute as @e[distance=..5,type=interaction,tag=ps_wall_photo] if score @s ps_interact_time = #current_time ps run tag @s add photo_target

#execute
execute as @n[distance=..5,type=interaction,tag=photo_target,tag=ps_wall_photo,limit=1] at @s positioned ~ ~0.1 ~ run function ps:photowall/remove