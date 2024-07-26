setblock 0 -64 0 white_shulker_box{Items:[{id:"paper",count:1,Slot:0b,components:{item_name:'"底片"',custom_model_data:1001,custom_data:{is_film:1}}}]}
data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".deco merge from storage ps:game current_deco
execute if score #customer_is_taking ps matches 1 run data modify block 0 -64 0 Items[{Slot:0b}].components."minecraft:custom_data".customer merge from storage ps:game current_customer
loot spawn ~ ~ ~ mine 0 -64 0
setblock 0 -64 0 bedrock

particle flash ~ ~ ~ 0 0 0 0 20
kill @e[type=item_display,tag=photo_blackbox,distance=..10]
function ps:camera/restore