advancement revoke @s only ps:attack_magnifier

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

execute as @n[type=interaction,distance=..5,tag=ps_magnifier] run function ps:wash/magnifier_removefilm