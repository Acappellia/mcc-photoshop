advancement revoke @s only ps:interact_xianyingye

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

execute at @n[type=interaction,distance=..5,tag=ps_xian] run particle fishing ~ ~0.2 ~ 0.1 0 0.1 0 10
execute at @n[type=interaction,distance=..5,tag=ps_xian] run playsound item.bottle.empty block @a ~ ~ ~ 0.5 1
item modify entity @s weapon.mainhand ps:add_xian