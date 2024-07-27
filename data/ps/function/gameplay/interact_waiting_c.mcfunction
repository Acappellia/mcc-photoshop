advancement revoke @s only ps:npc_waiting_c

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

execute unless score #game_status ps matches 3 run return -1

execute unless score #random_waiting_c ps matches 1.. store result score #random_waiting_c ps run random value 1..9

scoreboard players reset #required_bg ps
scoreboard players reset #required_deco ps

playsound entity.cat.ambient player @a ~ ~ ~ 1 2
execute if score #random_waiting_c ps matches 1 run function ps:gameplay/dialogues/c1
execute if score #random_waiting_c ps matches 2 run function ps:gameplay/dialogues/c2
execute if score #random_waiting_c ps matches 3 run function ps:gameplay/dialogues/c3
execute if score #random_waiting_c ps matches 4 run function ps:gameplay/dialogues/c4
execute if score #random_waiting_c ps matches 5 run function ps:gameplay/dialogues/c5
execute if score #random_waiting_c ps matches 6 run function ps:gameplay/dialogues/c6
execute if score #random_waiting_c ps matches 7 run function ps:gameplay/dialogues/c7
execute if score #random_waiting_c ps matches 8 run function ps:gameplay/dialogues/c8
execute if score #random_waiting_c ps matches 9 run function ps:gameplay/dialogues/c9

scoreboard players remove #waiting_c_lines ps 1

execute unless score #waiting_c_lines ps matches 0 as @e[type=interaction,distance=..10,tag=waiting_c] on vehicle run return 1

scoreboard players set #game_status ps 4
scoreboard players set #npc_max_shots ps 5
execute as @a[tag=f2] run function ps:player/show_blackscreen
schedule function ps:gameplay/waiting_d_tp 20t replace