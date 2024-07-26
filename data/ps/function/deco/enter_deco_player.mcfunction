effect give @s slowness infinite 9 true
execute as @s run function ps:player/store_inv

scoreboard players reset #deco_last_pickslot ps
scoreboard players reset #deco_pickslot ps