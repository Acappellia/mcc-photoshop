execute as @e[type=interaction,tag=pose] on vehicle run tp @s 150 -34 786 180 0
execute as @e[type=interaction,tag=pose] on vehicle on passengers run tp @s 150 -34 786 180 0
execute as @e[type=interaction,tag=pose] on vehicle run function ps:animation/update {ani_id:6}