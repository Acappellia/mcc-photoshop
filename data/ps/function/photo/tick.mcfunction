execute store result score #holding_photo ps if predicate ps:holding_photo

execute if score #holding_photo ps matches 1 run function ps:photo/holding_tick
execute unless score #holding_photo ps matches 1 if score @s ps_holding_photo matches 0 run function ps:photo/kill