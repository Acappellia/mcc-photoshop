#pedestrian tp
execute if data storage ps:tmp frame_data.tp_forward at @s run tp @s ^ ^ ^0.5
#execute if data storage ps:tmp frame_data.tp_forward run data merge entity @s {teleport_duration:1}

#interpolate motion
execute if data storage ps:tmp frame_data.part_1 on passengers as @s[tag=part1] run data modify entity @s {} merge from storage ps:tmp frame_data.part_1
execute if data storage ps:tmp frame_data.part_2 on passengers as @s[tag=part2] run data modify entity @s {} merge from storage ps:tmp frame_data.part_2
execute if data storage ps:tmp frame_data.part_3 on passengers as @s[tag=part3] run data modify entity @s {} merge from storage ps:tmp frame_data.part_3
execute if data storage ps:tmp frame_data.part_4 on passengers as @s[tag=part4] run data modify entity @s {} merge from storage ps:tmp frame_data.part_4
execute if data storage ps:tmp frame_data.part_5 on passengers as @s[tag=part5] run data modify entity @s {} merge from storage ps:tmp frame_data.part_5
execute if data storage ps:tmp frame_data.part_6 on passengers as @s[tag=part6] run data modify entity @s {} merge from storage ps:tmp frame_data.part_6
execute if data storage ps:tmp frame_data.part_7 on passengers as @s[tag=part7] run data modify entity @s {} merge from storage ps:tmp frame_data.part_7
execute if data storage ps:tmp frame_data.part_8 on passengers as @s[tag=part8] run data modify entity @s {} merge from storage ps:tmp frame_data.part_8
execute if data storage ps:tmp frame_data.part_9 on passengers as @s[tag=part9] run data modify entity @s {} merge from storage ps:tmp frame_data.part_9

execute if data storage ps:tmp frame_data.is_last run function ps:animation/ticks/end