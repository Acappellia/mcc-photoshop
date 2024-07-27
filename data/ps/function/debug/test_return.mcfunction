tellraw @a "11"

execute if score @s ps_player_id matches 0 run return run function ps:debug/test_function

tellraw @a "234"