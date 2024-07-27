execute if score @s ps_tp_cd matches 0 run function ps:player/show_blackscreen_short
scoreboard players add @s ps_tp_cd 1
execute if score @s ps_tp_cd matches 12 run tp @s 140 -43 798 180 0

tag @s add in_tp