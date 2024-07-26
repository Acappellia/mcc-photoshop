#check if available
execute unless data storage ps:ani available[0] run return -1

#summon
summon interaction ~ ~ ~ {Tags:["new_obj","ani"],Passengers:[\
{id:"item_display",Tags:["part_1"]},\
{id:"item_display",Tags:["part_2"]},\
{id:"item_display",Tags:["part_3"]},\
{id:"item_display",Tags:["part_4"]},\
{id:"item_display",Tags:["part_5"]},\
{id:"item_display",Tags:["part_6"]},\
{id:"item_display",Tags:["part_7"]},\
{id:"item_display",Tags:["part_8"]},\
{id:"item_display",Tags:["part_9"]},\
]}

#assign id and set models
$data modify storage ps:tmp ani_data set from storage ps:ani_data data[$(ani_id)]
#$scoreboard players set @n[type=interaction,tag=new_obj,distance=..1] ps_ani_id $(ani_id)
execute as @n[type=interaction,tag=new_obj,distance=..1] run function ps:animation/inits/assign_uuid

#add frames
execute store result storage ps:tmp frame_info.frame int 1 run scoreboard players set #frame_count ps 1
execute store result storage ps:tmp frame_info.obj_id int 1 run scoreboard players get #assigned_obj_id ps
execute if data storage ps:tmp ani_data.frames[0] run function ps:animation/inits/add_frames with storage ps:tmp frame_info