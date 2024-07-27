advancement revoke @s only ps:npc_pose

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

playsound entity.cat.ambient player @a ~ ~ ~ 1 2
execute if score #game_status ps matches 4 run return run function ps:gameplay/dialogues/interact_pose