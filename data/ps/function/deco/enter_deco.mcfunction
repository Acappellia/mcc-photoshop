scoreboard players set #deco_picking ps 1

data modify storage ps:tmp deco_origin set value {}
execute on passengers run data modify storage ps:tmp deco_origin set from entity @s item

scoreboard players set #deco_picktype ps 0
execute if entity @s[tag=bg] run scoreboard players set #deco_picktype ps 1
execute if entity @s[tag=outfit] run scoreboard players set #deco_picktype ps 2

execute as @p[tag=deco_user,distance=..10] run function ps:deco/enter_deco_player

tellraw @a "enter_deco"