execute if entity @s[tag=have_film] run return -1

playsound entity.item_frame.place player @a ~ ~ ~ 1 1.2

execute on passengers run data modify entity @s item set from entity @p[distance=..10,tag=magnifier_user] SelectedItem
item modify entity @p[distance=..10,tag=magnifier_user] weapon.mainhand ps:remove_1
tag @s add have_film
execute as @e[type=item_display,tag=magnifier_display,distance=..10] run data modify entity @s item.components.minecraft:custom_model_data set value 46