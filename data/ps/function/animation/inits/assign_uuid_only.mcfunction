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