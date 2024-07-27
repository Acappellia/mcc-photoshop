execute store result score #check_player_id ps run data get storage ps:player_storage boxes[0].ps_player_id
execute if score #check_player_id ps = @s ps_player_id run return run function ps:player/restore_inv_3
data modify storage ps:player_storage boxes append from storage ps:player_storage boxes[0]
data remove storage ps:player_storage boxes[0]
data modify storage ps:player_storage boxes append from storage ps:player_storage boxes[0]
data remove storage ps:player_storage boxes[0]
scoreboard players add #restore_inv_loop ps 1
execute if score #restore_inv_loop ps matches 10.. run tellraw @s "身上的东西不小心弄丢了……"
execute if score #restore_inv_loop ps matches 10.. run return -1
function ps:player/restore_inv_2