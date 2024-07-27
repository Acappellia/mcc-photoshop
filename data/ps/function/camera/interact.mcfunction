advancement revoke @s only ps:interact_camera

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

execute if entity @a[tag=taking_shot,distance=0.1..] run tellraw @s [{"selector": "@a[tag=taking_shot]"},{"text": "正在拍照，还是不要捣乱了"}]
execute if entity @a[tag=taking_shot,distance=0.1..] run return -1

execute if score #deco_picking ps matches 1 run tellraw @s [{"selector": "@a[tag=deco_user]"},{"text": "还在布置影棚，再等等吧"}]
execute if score #deco_picking ps matches 1 run return -1

execute if entity @s[tag=taking_shot] run return run function ps:camera/take_shot
execute unless entity @s[tag=taking_shot] run function ps:camera/standby