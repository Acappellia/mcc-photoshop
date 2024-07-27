tp @s ~ ~ ~ ~ ~
execute if score #facing_photowall ps matches 1 run tp @s 138.1 ~ ~ -90 0
execute if entity @s[tag=customer_photo] at @s run tp @s ^ ^-0.45 ^0.02
execute if entity @s[tag=deco_1_photo] at @s run tp @s ^1 ^ ^
execute if entity @s[tag=deco_2_photo] at @s run tp @s ^ ^ ^
execute if entity @s[tag=deco_3_photo] at @s run tp @s ^ ^ ^
execute if entity @s[tag=deco_4_photo] at @s run tp @s ^ ^ ^
execute if entity @s[tag=bg_photo] at @s run tp @s ^ ^ ^