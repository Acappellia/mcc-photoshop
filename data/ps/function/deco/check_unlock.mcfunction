execute store result score #unlock_money ps run data get storage ps:tmp selecting_deco.price

execute if score #money ps < #unlock_money ps run tellraw @a [{"text": "> ","color": "white"},{"text": "金币不足，无法解锁...","color": "gray"}]
execute if score #money ps < #unlock_money ps run return run playsound block.note_block.hat player @a ~ ~ ~ 1 0.5

scoreboard players operation #money ps -= #unlock_money ps
function ps:deco/unlock with storage ps:tmp deco_sel_info

tellraw @a [{"text": "> ","color": "white"},{"text": "解锁成功！","color": "yellow"}]
playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1

scoreboard players reset #deco_last_pickslot ps
clear @s