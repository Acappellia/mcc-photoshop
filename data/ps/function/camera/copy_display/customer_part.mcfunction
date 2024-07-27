data modify storage ps:tmp photo_data prepend value {}
data modify storage ps:tmp photo_data[0].item set from entity @s item
data modify storage ps:tmp photo_data[0].transformation set from storage ps:tmp customer_ani_part.transformation
data modify storage ps:tmp photo_data[0].Tags set value ["ps_photo","customer_photo"]

execute store result storage ps:tmp photo_data[0].transformation[0] double 1 run data get storage ps:tmp customer_ani_part.transformation[0] 2000000
execute store result storage ps:tmp photo_data[0].transformation[1] double 1 run data get storage ps:tmp customer_ani_part.transformation[1] 2000000
execute store result storage ps:tmp photo_data[0].transformation[2] double 1 run data get storage ps:tmp customer_ani_part.transformation[2] 2000000
execute store result storage ps:tmp photo_data[0].transformation[3] double 1 run data get storage ps:tmp customer_ani_part.transformation[3] 2000000
execute store result storage ps:tmp photo_data[0].transformation[4] double 1 run data get storage ps:tmp customer_ani_part.transformation[4] 2000000
execute store result storage ps:tmp photo_data[0].transformation[5] double 1 run data get storage ps:tmp customer_ani_part.transformation[5] 2000000
execute store result storage ps:tmp photo_data[0].transformation[6] double 1 run data get storage ps:tmp customer_ani_part.transformation[6] 2000000
execute store result storage ps:tmp photo_data[0].transformation[7] double 1 run data get storage ps:tmp customer_ani_part.transformation[7] 2000000
execute store result storage ps:tmp photo_data[0].transformation[8] double 1 run data get storage ps:tmp customer_ani_part.transformation[8] 10000
execute store result storage ps:tmp photo_data[0].transformation[9] double 1 run data get storage ps:tmp customer_ani_part.transformation[9] 10000
execute store result storage ps:tmp photo_data[0].transformation[10] double 1 run data get storage ps:tmp customer_ani_part.transformation[10] 10000
execute store result storage ps:tmp photo_data[0].transformation[11] double 1 run data get storage ps:tmp customer_ani_part.transformation[11] 10000
execute store result storage ps:tmp photo_data[0].transformation[15] double 1 run data get storage ps:tmp customer_ani_part.transformation[15] 6000000

tellraw @a ["origin: ",{"nbt": "customer_ani_part.transformation","storage": "ps:tmp"}]
tellraw @a ["out: ",{"nbt": "photo_data[0].transformation","storage": "ps:tmp"}]