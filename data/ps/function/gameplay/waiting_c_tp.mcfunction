execute store result score #random ps run random value 1..3

execute if score #random ps matches 1 as @e[type=interaction,tag=go_upstairs] on vehicle run tp @s 145 -34 792 180 0
execute if score #random ps matches 1 as @e[type=interaction,tag=go_upstairs] on vehicle on passengers run tp @s 145 -34 792 180 0

execute if score #random ps matches 2 as @e[type=interaction,tag=go_upstairs] on vehicle run tp @s 142 -34 790 90 0
execute if score #random ps matches 2 as @e[type=interaction,tag=go_upstairs] on vehicle on passengers run tp @s 142 -34 790 90 0

execute if score #random ps matches 3 as @e[type=interaction,tag=go_upstairs] on vehicle run tp @s 150 -34 790 -90 0
execute if score #random ps matches 3 as @e[type=interaction,tag=go_upstairs] on vehicle on passengers run tp @s 150 -34 790 -90 0