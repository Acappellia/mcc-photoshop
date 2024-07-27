execute as @e[type=interaction,tag=waiting_c] on vehicle run tp @s 158 -34 789 90 0
execute as @e[type=interaction,tag=waiting_c] on vehicle on passengers run tp @s 158 -34 789 90 0
execute as @e[type=interaction,tag=waiting_c] on vehicle run function ps:animation/update {ani_id:6}