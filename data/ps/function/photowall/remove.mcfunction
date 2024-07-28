setblock 0 -64 0 white_shulker_box{Items:[{id:"paper",Slot:0b,count:1}]}

scoreboard players operation #wallphoto_id ps = @s ps_wallphoto_id
execute as @e[type=item_display,distance=..1,tag=ps_photo_base] if score @s ps_wallphoto_id = #wallphoto_id ps run data modify block 0 -64 0 Items[{Slot:0b}].components set from entity @s item.components
loot spawn ~0.2 ~ ~ mine 0 -64 0
setblock 0 -64 0 bedrock

playsound entity.item_frame.remove_item block @a ~ ~ ~ 1 1.2
execute as @e[type=item_display,distance=..1,tag=ps_photo] if score @s ps_wallphoto_id = #wallphoto_id ps run kill @s
kill @s