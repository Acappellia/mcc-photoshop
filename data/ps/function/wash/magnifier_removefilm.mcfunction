execute unless entity @s[tag=have_film] run return -1

setblock 0 -64 0 white_shulker_box{Items:[{id:"paper",count:1,Slot:0b}]}
execute on passengers run data modify block 0 -64 0 Items[{Slot:0b}].components set from entity @s item.components
loot spawn ~ ~ ~ mine 0 -64 0
setblock 0 -64 0 bedrock

playsound entity.item_frame.remove_item player @a ~ ~ ~ 1 1.2

execute on passengers run data remove entity @s item 
tag @s remove have_film
execute as @e[type=item_display,tag=magnifier_display,distance=..10] run data modify entity @s item.components.minecraft:custom_model_data set value 45