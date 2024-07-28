execute store result score #unlock_money ps run data get storage ps:tmp selecting_deco.price
execute if score #money ps < #unlock_money ps run tellraw @s "金钱不够，无法解锁"
execute if score #money ps < #unlock_money ps run return -1

scoreboard players operation #money ps -= #unlock_money ps
function ps:deco/unlock with storage ps:tmp deco_sel_info

playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1

scoreboard players reset #deco_last_pickslot ps
clear @s