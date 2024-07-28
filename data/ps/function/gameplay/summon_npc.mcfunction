scoreboard players reset #time_gap ps
scoreboard players set #game_status ps 1

execute store result score #random ps run random value 1..3

execute if score #random ps matches 1 positioned 149 -43 788 run function ps:animation/add {ani_id:0}
execute if score #random ps matches 2 positioned 149 -43 788 run function ps:animation/add {ani_id:27}
execute if score #random ps matches 3 positioned 149 -43 788 run function ps:animation/add {ani_id:28}

execute store result score #random_skin_id ps run random value 0..5
execute as @e[type=interaction,tag=enter] on vehicle on passengers as @s[type=item_display] run function ps:gameplay/random_skin

execute store result storage ps:tmp random_info.id int 1 run random value 0..9
function ps:gameplay/give_name with storage ps:tmp random_info

schedule function ps:gameplay/entersound 10s replace