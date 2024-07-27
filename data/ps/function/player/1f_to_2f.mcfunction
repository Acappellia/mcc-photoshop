execute if score @s ps_tp_cd matches 0 run function ps:player/show_blackscreen
scoreboard players add @s ps_tp_cd 1
execute if score @s ps_tp_cd matches 20 run tp @s 149 -34 807 180 0

tag @s add in_tp