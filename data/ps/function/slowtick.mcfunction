execute if score #game_status ps matches 0 run scoreboard players add #time_gap ps 1
execute if score #time_gap ps matches 20.. if predicate ps:5per_chance run function ps:gameplay/summon_npc

schedule function ps:slowtick 20t replace