execute unless entity @a[tag=deco_user] run return run function ps:deco/deco_restore

execute store result score #deco_pickslot ps store result storage ps:tmp deco_sel_info.id int 1 run scoreboard players get @p[tag=deco_user,distance=..20] ps_selecting_slot
execute unless score #deco_last_pickslot ps = #deco_pickslot ps run function ps:deco/copy_selecting_deco with storage ps:tmp deco_sel_info
scoreboard players operation #deco_last_pickslot ps = #deco_pickslot ps