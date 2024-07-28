advancement revoke @s only ps:atk_camera

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

execute unless entity @s[tag=taking_shot] run return -1
execute unless entity @e[type=interaction,tag=pose,distance=..20] run return -1

function ps:gameplay/dialogues/change_pose
execute as @e[type=interaction,distance=..20,tag=pose] on vehicle run function ps:gameplay/random_pose