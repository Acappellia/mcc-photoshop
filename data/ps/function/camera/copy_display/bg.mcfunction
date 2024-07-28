data modify storage ps:tmp photo_data prepend value {}
execute store result score #current_bg ps run data get storage ps:game current_deco.bg
execute if score #current_bg ps matches 0 run data modify storage ps:tmp photo_data[0].item set value {id:"firework_star",count:1,components:{"minecraft:custom_model_data":120}}
execute if score #current_bg ps matches 1 run data modify storage ps:tmp photo_data[0].item set value {id:"firework_star",count:1,components:{"minecraft:custom_model_data":121}}
execute if score #current_bg ps matches 2 run data modify storage ps:tmp photo_data[0].item set value {id:"firework_star",count:1,components:{"minecraft:custom_model_data":122}}
execute if score #current_bg ps matches 3 run data modify storage ps:tmp photo_data[0].item set value {id:"firework_star",count:1,components:{"minecraft:custom_model_data":123}}
execute if score #current_bg ps matches 4 run data modify storage ps:tmp photo_data[0].item set value {id:"firework_star",count:1,components:{"minecraft:custom_model_data":124}}
data modify storage ps:tmp photo_data[0].Tags set value ["ps_photo","bg_photo"]