execute if entity @s[tag=deco_user] run function ps:deco/player_restore
#tp @s 0 0 0
tellraw @s [{"text": "欢迎回来，"},{"selector": "@s"},{"text": "!"}]

scoreboard players reset @s ps_logout