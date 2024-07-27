data remove storage ps:tmp photo_data

execute as @e[type=interaction,tag=pose,distance=..50] on vehicle run function ps:camera/copy_display/customer
execute as @e[type=interaction,tag=deco_1,distance=..50] on passengers as @s[type=item_display] run function ps:camera/copy_display/deco_1
execute as @e[type=interaction,tag=deco_2,distance=..50] on passengers as @s[type=item_display] run function ps:camera/copy_display/deco_2
execute as @e[type=interaction,tag=deco_3,distance=..50] on passengers as @s[type=item_display] run function ps:camera/copy_display/deco_3
execute as @e[type=interaction,tag=deco_4,distance=..50] on passengers as @s[type=item_display] run function ps:camera/copy_display/deco_4
execute as @e[type=interaction,tag=bg,distance=..50] on passengers as @s[type=item_display] run function ps:camera/copy_display/bg

setblock 0 -64 0 white_shulker_box{Items:[{id:"paper",count:1,Slot:0b,components:{item_name:'"底片"',custom_model_data:1001,custom_data:{ps_film:1}}}]}
#data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".deco merge from storage ps:game current_deco
#execute if score #customer_is_taking ps matches 1 run data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".customer merge from storage ps:game current_customer
data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".photo_data set from storage ps:tmp photo_data
execute store result block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".photo_id int 1 run scoreboard players add #photo_id ps 1
loot spawn ~ ~ ~ mine 0 -64 0
setblock 0 -64 0 bedrock

particle flash ~ ~ ~ 0 0 0 0 20
#kill @e[type=item_display,tag=photo_blackbox,distance=..10]
function ps:camera/restore

execute unless score #game_status ps matches 4 run return 1
execute as @e[type=interaction,distance=..10,tag=pose] on vehicle run function ps:animation/update {ani_id:6}
execute as @a[tag=f2] run function ps:player/show_blackscreen
scoreboard players set #game_status ps 5
schedule function ps:gameplay/afterpose_tp 22t replace