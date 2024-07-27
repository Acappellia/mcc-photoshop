advancement revoke @s only ps:interact_magnifier

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

tag @s add magnifier_user
execute if predicate ps:holding_film as @n[type=interaction,distance=..5,tag=ps_magnifier] run function ps:wash/magnifier_addfilm
execute if predicate ps:holding_photopaper_0 as @n[type=interaction,distance=..5,tag=ps_magnifier] run function ps:wash/magnifier_copyfilm
tag @s remove magnifier_user