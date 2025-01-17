advancement revoke @s only ps:interact_deco

scoreboard players reset #player_confirm_click ps 
execute if entity @s[tag=deco_user] run scoreboard players set #player_confirm_click ps 1
execute if score #player_confirm_click ps matches 1 run function ps:deco/pick_confirm
execute if score #player_confirm_click ps matches 1 run return -1

playsound item.armor.equip_leather player @a ~ ~ ~ 1 0.8

execute if score #deco_picking ps matches 1 run tellraw @s [{"selector": "@a[tag=deco_user]"},{"text": "已经在布置影棚了..."}]
execute if score #deco_picking ps matches 1 run return -1

execute if entity @a[tag=taking_shot] run tellraw @s [{"selector": "@a[tag=taking_shot]"},{"text": "正在拍照，还是不要捣乱了"}]
execute if entity @a[tag=taking_shot] run return -1

#determine interaction target
execute store result score #current_time ps run time query gametime
execute as @e[distance=..20,type=interaction,tag=ps_deco] store result score @s ps_interact_time run data get entity @s interaction.timestamp
execute as @e[distance=..20,type=interaction,tag=ps_deco] if score @s ps_interact_time = #current_time ps run tag @s add deco_target

#execuegt
tag @s add deco_user
execute as @n[distance=..20,type=interaction,tag=deco_target,tag=ps_deco,limit=1] at @s run function ps:deco/enter_deco