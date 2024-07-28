tp @s ~ ~ ~ ~ ~
execute if score #facing_photowall ps matches 1 run tp @s ^ ^ ^-1 ~ ~
execute if score #facing_photowall ps matches 1 at @s run tp @s 138.1 ~ ~ -90 0
execute if entity @s[tag=customer_photo] at @s run tp @s ^ ^-0.2 ^0.02
execute if entity @s[tag=deco_1_photo] at @s run tp @s ^0.15 ^-0.15 ^0.026
execute if entity @s[tag=deco_2_photo] at @s run tp @s ^-0.1 ^-0.15 ^0.026
execute if entity @s[tag=deco_3_photo] at @s run tp @s ^0.1 ^-0.05 ^0.014
execute if entity @s[tag=deco_4_photo] at @s run tp @s ^-0.15 ^-0.05 ^0.014
execute if entity @s[tag=bg_photo] at @s run tp @s ^ ^0.28 ^0.16