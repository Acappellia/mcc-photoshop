tag @s remove deco_target

execute if entity @s[tag=deco_1] store result storage ps:game current_deco.deco_1 int 1 run scoreboard players get #deco_pickslot ps
execute if entity @s[tag=deco_2] store result storage ps:game current_deco.deco_2 int 1 run scoreboard players get #deco_pickslot ps
execute if entity @s[tag=deco_3] store result storage ps:game current_deco.deco_3 int 1 run scoreboard players get #deco_pickslot ps
execute if entity @s[tag=deco_4] store result storage ps:game current_deco.deco_4 int 1 run scoreboard players get #deco_pickslot ps
execute if entity @s[tag=bg] store result storage ps:game current_deco.bg int 1 run scoreboard players get #deco_pickslot ps