tellraw @a "xxx: 真好的照片！给你钱！"

scoreboard players add #money ps 100

execute as @a[tag=f2] run function ps:player/show_blackscreen
schedule function ps:gameplay/final_kill 20t replace