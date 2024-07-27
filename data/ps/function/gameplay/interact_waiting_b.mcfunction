advancement revoke @s only ps:npc_waiting_b

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

execute unless score #game_status ps matches 2 run return -1

execute unless score #random_waiting_b ps matches 1.. store result score #random_waiting_b ps run random value 1..9

playsound entity.cat.ambient player @a ~ ~ ~ 1 2
execute if score #random_waiting_b ps matches 1 run function ps:gameplay/dialogues/b1
execute if score #random_waiting_b ps matches 2 run function ps:gameplay/dialogues/b2
execute if score #random_waiting_b ps matches 3 run function ps:gameplay/dialogues/b3
execute if score #random_waiting_b ps matches 4 run function ps:gameplay/dialogues/b4
execute if score #random_waiting_b ps matches 5 run function ps:gameplay/dialogues/b5
execute if score #random_waiting_b ps matches 6 run function ps:gameplay/dialogues/b6
execute if score #random_waiting_b ps matches 7 run function ps:gameplay/dialogues/b7
execute if score #random_waiting_b ps matches 8 run function ps:gameplay/dialogues/b8
execute if score #random_waiting_b ps matches 9 run function ps:gameplay/dialogues/b9

scoreboard players remove #waiting_b_lines ps 1

execute unless score #waiting_b_lines ps matches 0 as @e[type=interaction,distance=..10,tag=waiting_b] on vehicle run return run function ps:animation/update {ani_id:2}

execute as @e[type=interaction,distance=..10,tag=waiting_b] on vehicle run function ps:animation/update {ani_id:4}
scoreboard players set #game_status ps 3
scoreboard players reset #random_waiting_c ps
scoreboard players reset #waiting_c_lines ps
execute as @a[tag=f1] run function ps:player/show_blackscreen
execute as @a[tag=f2] run function ps:player/show_blackscreen
schedule function ps:gameplay/waiting_c_tp 20t replace