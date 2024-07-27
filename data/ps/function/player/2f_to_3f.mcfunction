execute if score @s ps_tp_cd matches 0 run function ps:player/show_blackscreen
scoreboard players add @s ps_tp_cd 1
execute if score @s ps_tp_cd matches 20 run tp @s 140 -23 806 180 0
execute if score @s ps_tp_cd matches 20 run function ps:photo/kill

tag @s add in_tp