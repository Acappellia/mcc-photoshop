scoreboard players reset @s ps_jump

execute as @e[type=interaction,distance=..10,tag=deco_target] run function ps:deco/deco_restore
function ps:deco/player_restore