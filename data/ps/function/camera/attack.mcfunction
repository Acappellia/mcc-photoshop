advancement revoke @s only ps:atk_camera

execute unless entity @s[tag=taking_shot] run return -1
execute unless entity @e[type=interaction,tag=pose,distance=..20] run return -1

tellraw @a "xxx: 换个姿势吧！"
execute as @e[type=interaction,distance=..20,tag=pose] on vehicle run function ps:gameplay/random_pose