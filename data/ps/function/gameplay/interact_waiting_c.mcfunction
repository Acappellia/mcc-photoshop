advancement revoke @s only ps:npc_waiting_c

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

execute unless score #game_status ps matches 3 run return -1

execute if score #waiting_c_lines ps matches 3 run tellraw @a "xxx: 好久不见！！"
execute if score #waiting_c_lines ps matches 2 run tellraw @a "xxx: 我要拍个照片！"
execute if score #waiting_c_lines ps matches 1 run tellraw @a "xxx: 麻烦您了！"

scoreboard players remove #waiting_c_lines ps 1

execute unless score #waiting_c_lines ps matches 0 as @e[type=interaction,distance=..10,tag=waiting_c] on vehicle run return 1

execute as @e[type=interaction,distance=..10,tag=waiting_c] on vehicle run function ps:animation/update {ani_id:6}
scoreboard players set #game_status ps 4
execute as @a[tag=f2] run function ps:player/show_blackscreen
schedule function ps:gameplay/waiting_d_tp 22t replace