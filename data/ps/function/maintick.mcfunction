effect give @a saturation infinite 0 true
effect give @a resistance infinite 9 true

execute if data storage ps:ani frame_list[0] run function ps:animation/tick

execute as @a[tag=deco_user] if predicate ps:deco_quit run function ps:deco/player_quit
execute as @a[scores={ps_logout=1..}] run function ps:player/reset_status
execute if score #deco_picking ps matches 1 as @e[type=interaction,tag=deco_target] at @s run function ps:deco/tick