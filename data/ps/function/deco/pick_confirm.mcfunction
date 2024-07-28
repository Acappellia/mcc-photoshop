advancement revoke @s only ps:pick_confirm

execute unless score @s ps_click_cd matches 0.. run return -1
scoreboard players set @s ps_click_cd -5

playsound item.armor.equip_leather player @a ~ ~ ~ 1 0.8

#check if locked
scoreboard players reset #click_locked ps
execute if data storage ps:tmp selecting_deco.locked run scoreboard players set #click_locked ps 1
execute if score #click_locked ps matches 1 run function ps:deco/check_unlock
execute if score #click_locked ps matches 1 run return -1

execute unless data storage ps:tmp selecting_deco run function ps:deco/player_quit
execute unless data storage ps:tmp selecting_deco run return -1

#execute if score #deco_picktype ps matches 2 as @e[type=interaction,tag=customer,distance=..50] run function ps:customer/change_outfit
function ps:deco/player_restore
execute as @e[type=interaction,distance=..20,tag=deco_target] run function ps:deco/deco_confirm

scoreboard players reset #deco_picking ps