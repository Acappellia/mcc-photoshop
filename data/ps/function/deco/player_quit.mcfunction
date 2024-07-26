scoreboard players reset @s ps_jump

execute as @e[type=item_display,distance=..10,tag=deco_target] run function ps:deco/deco_restore
function ps:deco/player_restore