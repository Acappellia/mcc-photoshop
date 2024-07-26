#assign obj_id
execute store result score @s ps_obj_id store result score #assigned_obj_id ps run data get storage ps:ani available[0]
data remove storage ps:ani available[0]

#assign uuid
execute if score #assigned_obj_id ps matches 1 run data modify entity @s UUID set value [I;0,0,0,1]
execute if score #assigned_obj_id ps matches 2 run data modify entity @s UUID set value [I;0,0,0,2]
execute if score #assigned_obj_id ps matches 3 run data modify entity @s UUID set value [I;0,0,0,3]
execute if score #assigned_obj_id ps matches 4 run data modify entity @s UUID set value [I;0,0,0,4]
execute if score #assigned_obj_id ps matches 5 run data modify entity @s UUID set value [I;0,0,0,5]
execute if score #assigned_obj_id ps matches 6 run data modify entity @s UUID set value [I;0,0,0,6]
execute if score #assigned_obj_id ps matches 7 run data modify entity @s UUID set value [I;0,0,0,7]
execute if score #assigned_obj_id ps matches 8 run data modify entity @s UUID set value [I;0,0,0,8]
execute if score #assigned_obj_id ps matches 9 run data modify entity @s UUID set value [I;0,0,0,9]

#set tag
data modify entity @s Tags append from storage ps:tmp ani_data.ani_tag

#set dimension
data modify entity @s width set from storage ps:tmp ani_data.width
data modify entity @s height set from storage ps:tmp ani_data.height

#set parts model
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_1
execute if data storage ps:tmp part_data on passengers as @s[tag=part_1] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_2
execute if data storage ps:tmp part_data on passengers as @s[tag=part_2] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_3
execute if data storage ps:tmp part_data on passengers as @s[tag=part_3] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_4
execute if data storage ps:tmp part_data on passengers as @s[tag=part_4] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_5
execute if data storage ps:tmp part_data on passengers as @s[tag=part_5] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_6
execute if data storage ps:tmp part_data on passengers as @s[tag=part_6] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_7
execute if data storage ps:tmp part_data on passengers as @s[tag=part_7] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_8
execute if data storage ps:tmp part_data on passengers as @s[tag=part_8] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_9
execute if data storage ps:tmp part_data on passengers as @s[tag=part_9] run function ps:animation/inits/set_models

#remove tag
tag @s remove new_obj