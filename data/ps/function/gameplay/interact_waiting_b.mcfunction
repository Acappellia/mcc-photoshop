advancement revoke @s only ps:npc_waiting_b

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

execute unless score #game_status ps matches 2 run return -1

execute if score #waiting_b_lines ps matches 3 run tellraw @a "xxx: 好久不见！！"
execute if score #waiting_b_lines ps matches 2 run tellraw @a "xxx: 我要拍个照片！"
execute if score #waiting_b_lines ps matches 1 run tellraw @a "xxx: 麻烦您了！"

scoreboard players remove #waiting_b_lines ps 1

execute unless score #waiting_b_lines ps matches 0 as @e[type=interaction,distance=..10,tag=waiting_b] on vehicle run return run function ps:animation/update {ani_id:2}

execute as @e[type=interaction,distance=..10,tag=waiting_b] on vehicle run function ps:animation/update {ani_id:4}
scoreboard players set #game_status ps 3
scoreboard players set #waiting_c_lines ps 3
execute as @a[tag=f1] run function ps:player/show_blackscreen
execute as @a[tag=f2] run function ps:player/show_blackscreen
schedule function ps:gameplay/waiting_c_tp 22t replace