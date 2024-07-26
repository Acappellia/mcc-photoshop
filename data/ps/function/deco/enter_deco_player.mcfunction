effect give @s slowness infinite 9 true
execute as @s run function ps:player/store_inv
item replace entity @s inventory.0 with paper
scoreboard players reset #deco_last_pickslot ps
scoreboard players reset #deco_pickslot ps