execute as @e[type=interaction,tag=waiting_d] on vehicle run function ps:animation/kill
scoreboard players set #game_status ps 0