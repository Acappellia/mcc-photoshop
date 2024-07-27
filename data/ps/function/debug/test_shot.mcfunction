data remove storage ps:tmp photo_data

execute as @e[type=interaction,tag=enter,distance=..50] on vehicle run function ps:camera/copy_display/customer
execute as @e[type=interaction,tag=deco_1,distance=..50] on passengers as @s[type=item_display] run function ps:camera/copy_display/deco_1
execute as @e[type=interaction,tag=deco_2,distance=..50] on passengers as @s[type=item_display] run function ps:camera/copy_display/deco_2
execute as @e[type=interaction,tag=deco_3,distance=..50] on passengers as @s[type=item_display] run function ps:camera/copy_display/deco_3
execute as @e[type=interaction,tag=deco_4,distance=..50] on passengers as @s[type=item_display] run function ps:camera/copy_display/deco_4
execute as @e[type=interaction,tag=bg,distance=..50] on passengers as @s[type=item_display] run function ps:camera/copy_display/bg

setblock 0 -64 0 white_shulker_box{Items:[{id:"paper",count:1,Slot:0b,components:{item_name:'"底片"',custom_model_data:1,custom_data:{ps_film:1}}}]}
data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".photo_data set from storage ps:tmp photo_data
execute store result block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".photo_id int 1 run scoreboard players add #photo_id ps 1
loot spawn ~ ~ ~ mine 0 -64 0
setblock 0 -64 0 bedrock

tellraw @a "shot taken"