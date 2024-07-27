tellraw @a "xxx: 真好的照片！给你钱！"

scoreboard players add #money ps 100

execute as @e[type=interaction,distance=..10,tag=waiting_d] on vehicle run function ps:animation/kill
scoreboard players set #game_status ps 0