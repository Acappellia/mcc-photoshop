execute store result storage ps:tmp customer_info.obj_id int 1 run scoreboard players get @s ps_obj_id

function ps:camera/copy_display/get_ani_data with storage ps:tmp customer_info

data modify storage ps:tmp customer_ani_part set from storage ps:tmp customer_ani_frame.part_1
execute if data storage ps:tmp customer_ani_frame.part_1 on passengers as @s[tag=part_1] run function ps:camera/copy_display/customer_part
data modify storage ps:tmp customer_ani_part set from storage ps:tmp customer_ani_frame.part_2
execute if data storage ps:tmp customer_ani_frame.part_2 on passengers as @s[tag=part_2] run function ps:camera/copy_display/customer_part
data modify storage ps:tmp customer_ani_part set from storage ps:tmp customer_ani_frame.part_3
execute if data storage ps:tmp customer_ani_frame.part_3 on passengers as @s[tag=part_3] run function ps:camera/copy_display/customer_part
data modify storage ps:tmp customer_ani_part set from storage ps:tmp customer_ani_frame.part_4
#tellraw @a "showing part 4"
execute if data storage ps:tmp customer_ani_frame.part_4 on passengers as @s[tag=part_4] run function ps:camera/copy_display/customer_part
data modify storage ps:tmp customer_ani_part set from storage ps:tmp customer_ani_frame.part_5
execute if data storage ps:tmp customer_ani_frame.part_5 on passengers as @s[tag=part_5] run function ps:camera/copy_display/customer_part
data modify storage ps:tmp customer_ani_part set from storage ps:tmp customer_ani_frame.part_6
execute if data storage ps:tmp customer_ani_frame.part_6 on passengers as @s[tag=part_6] run function ps:camera/copy_display/customer_part
data modify storage ps:tmp customer_ani_part set from storage ps:tmp customer_ani_frame.part_7
execute if data storage ps:tmp customer_ani_frame.part_7 on passengers as @s[tag=part_7] run function ps:camera/copy_display/customer_part
data modify storage ps:tmp customer_ani_part set from storage ps:tmp customer_ani_frame.part_8
execute if data storage ps:tmp customer_ani_frame.part_8 on passengers as @s[tag=part_8] run function ps:camera/copy_display/customer_part
data modify storage ps:tmp customer_ani_part set from storage ps:tmp customer_ani_frame.part_9
execute if data storage ps:tmp customer_ani_frame.part_9 on passengers as @s[tag=part_9] run function ps:camera/copy_display/customer_part