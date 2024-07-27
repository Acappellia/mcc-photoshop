clear @s
kill @e[type=item,distance=..5,nbt={Item:{components:{"minecraft:custom_data":{ps_deco_sel:1}}}}]

execute if score #deco_picktype ps matches 0 run function ps:deco/player_inv/replace_deco
execute if score #deco_picktype ps matches 1 run function ps:deco/player_inv/replace_bg
execute if score #deco_picktype ps matches 2 run function ps:deco/player_inv/replace_outfit

advancement revoke @s only ps:restore_deco_sel