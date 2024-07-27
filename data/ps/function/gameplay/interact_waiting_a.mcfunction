advancement revoke @s only ps:npc_waiting_a

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

execute unless score #game_status ps matches 1 run return -1

tellraw @a "xxx: 老板好！"

execute as @e[type=interaction,distance=..10,tag=waiting_a] on vehicle run function ps:animation/update {ani_id:2}
scoreboard players set #game_status ps 2
scoreboard players set #waiting_b_lines ps 3