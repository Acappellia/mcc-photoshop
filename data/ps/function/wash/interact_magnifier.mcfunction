advancement revoke @s only ps:interact_magnifier

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

execute if predicate ps:holding_film 