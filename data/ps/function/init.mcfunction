#init main scoreboard
scoreboard objectives add ps dummy

#init some global values
execute unless score #money ps matches 0.. run scoreboard players set #money ps 0

#init scoreboards
scoreboard objectives add ps_obj_id dummy
scoreboard objectives add ps_ani_id dummy
scoreboard objectives add ps_interact_time dummy

#init player scoreboards
scoreboard objectives add ps_logout custom:leave_game
scoreboard objectives add ps_jump custom:jump

#init values
execute unless data storage ps:ani available run data modify storage ps:ani available_list set value [1,2,3,4,5,6,7,8,9]
function ps:inits/animate_data
execute unless data storage ps:game unlocks run function ps:inits/unlocks
execute unless data storage ps:game current_deco run data modify storage ps:game current_deco set value {deco_a:0,deco_b:0,deco_c:0,deco_d:0,bg:0,outfit:0}

forceload add 0 0 0 0