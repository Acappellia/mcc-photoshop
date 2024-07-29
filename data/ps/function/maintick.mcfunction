effect give @a saturation infinite 0 true
effect give @a resistance infinite 9 true
gamemode adventure @a[gamemode=survival]
team join players @a

title @a actionbar [{"text": "\uea01 ","color": "white"},{"score": {"name": "#money","objective": "ps"},"color": "yellow"}]

execute as @a store result score @s ps_selecting_slot run data get entity @s SelectedItemSlot

execute as @a unless score @s ps_player_id matches 0.. store result score @s ps_player_id run scoreboard players add #ps_player_id ps 1

execute if data storage ps:ani frame_list[0] run function ps:animation/tick

execute as @a[tag=deco_user] if predicate ps:deco_quit run function ps:deco/player_quit
execute as @a[scores={ps_logout=1..}] run function ps:player/reset_status
execute if score #deco_picking ps matches 1 as @e[type=interaction,tag=deco_target] at @s run function ps:deco/tick

execute as @a[tag=taking_shot] at @s run function ps:camera/tick

execute as @a run function ps:photo/tick

execute as @a run function ps:player/check_place

execute as @a run function ps:player/bgm

item replace block 141 -24 800 container.0 with air

execute as @a run scoreboard players operation @s ps_last_selecting_slot = @s ps_selecting_slot
scoreboard players reset @a ps_jump
