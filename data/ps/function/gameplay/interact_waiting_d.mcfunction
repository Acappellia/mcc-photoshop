advancement revoke @s only ps:npc_waiting_d

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

execute if score #game_status ps matches 4 run return run tellraw @a "xxx: 帮我拍的好看点！"

execute unless score #game_status ps matches 5 run return -1

execute store result score #holding_photo ps if predicate ps:holding_photo
execute if score #holding_photo ps matches 1 run function ps:gameplay/give_photo
execute unless score #holding_photo ps matches 1 run tellraw @a "xxx: 我的照片洗好了吗？"