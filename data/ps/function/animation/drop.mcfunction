#set random uuid
execute summon marker run function ps:animation/inits/store_random_uuid
data modify entity @s UUID set from storage ps:tmp random_uuid

#return obj_id
data modify storage ps:ani available append value 999
execute store result storage ps:ani available[-1] int 1 run scoreboard players get @s ps_obj_id

#remove scoreboard & tag
scoreboard players reset @s ps_obj_id
#scoreboard players reset @s ps_ani_id
data modify entity @s Tags set value ["ani"]