#check obj_id and if available
execute unless score @s ps_obj_id matches 0.. unless data storage ps:ani available[0] run return -1

#assign new obj_id
execute unless score @s ps_obj_id matches 0.. run function ps:animation/inits/assign_uuid_only

#set frame
$function ps:animation/ticks/set_next {ani_id:$(ani_id)}