data modify storage ps:tmp photo_data prepend value {}
data modify storage ps:tmp photo_data[0].item set from entity @s item
data modify storage ps:tmp photo_data[0].transformation set from storage ps:tmp customer_ani_part.transformation
data modify storage ps:tmp photo_data[0].Tags set value ["ps_photo","customer_photo"]

execute store result storage ps:tmp photo_data[0].transformation[0] double 1 run data get storage ps:tmp customer_ani_part.transformation[0] 300
execute store result storage ps:tmp photo_data[0].transformation[1] double 1 run data get storage ps:tmp customer_ani_part.transformation[1] 300
execute store result storage ps:tmp photo_data[0].transformation[2] double 1 run data get storage ps:tmp customer_ani_part.transformation[2] 300
execute store result storage ps:tmp photo_data[0].transformation[3] double 1 run data get storage ps:tmp customer_ani_part.transformation[3] 300
execute store result storage ps:tmp photo_data[0].transformation[4] double 1 run data get storage ps:tmp customer_ani_part.transformation[4] 300
execute store result storage ps:tmp photo_data[0].transformation[5] double 1 run data get storage ps:tmp customer_ani_part.transformation[5] 300
execute store result storage ps:tmp photo_data[0].transformation[6] double 1 run data get storage ps:tmp customer_ani_part.transformation[6] 300
execute store result storage ps:tmp photo_data[0].transformation[7] double 1 run data get storage ps:tmp customer_ani_part.transformation[7] 300
execute store result storage ps:tmp photo_data[0].transformation[15] double 1 run data get storage ps:tmp customer_ani_part.transformation[15] 600