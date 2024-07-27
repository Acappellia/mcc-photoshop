execute unless entity @s[tag=have_film] run return -1

setblock 0 -64 0 white_shulker_box{Items:[{id:"paper",count:1,Slot:0b,components:{item_name:'"正在处理的相纸"',lore:['[{"text":"放进显影液里浸泡，显现图案","color":"gray"}]'],max_stack_size:1,custom_model_data:3}}]}
execute on passengers run data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data" set from entity @s item.components."minecraft:custom_data"
data remove block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".ps_film
data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".ps_photopaper set value 1
item replace entity @p[distance=..10,tag=magnifier_user] weapon.mainhand from block 0 -64 0 container.0
setblock 0 -64 0 bedrock
