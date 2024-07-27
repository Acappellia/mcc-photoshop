#init main scoreboard
scoreboard objectives add ps dummy
execute unless score #ps_player_id ps matches -2147483648..2147483647 run scoreboard players set #ps_player_id ps -1
execute unless score #photo_id ps matches -2147483648..2147483647 run scoreboard players set #photo_id ps -1

#init some global values
execute unless score #money ps matches 0.. run scoreboard players set #money ps 0

#init scoreboards
scoreboard objectives add ps_obj_id dummy
scoreboard objectives add ps_ani_id dummy
scoreboard objectives add ps_interact_time dummy

#init player scoreboards
scoreboard objectives add ps_player_id dummy
scoreboard objectives add ps_logout custom:leave_game
scoreboard objectives add ps_jump custom:jump
scoreboard objectives add ps_click_cd custom:time_since_death
scoreboard objectives add ps_holding_photo custom:time_since_death
scoreboard objectives add ps_selecting_slot dummy
scoreboard objectives add ps_last_selecting_slot dummy
scoreboard objectives add ps_holding_photo_id dummy
scoreboard objectives add ps_last_holding_photo_id dummy

#init values
execute unless data storage ps:ani available run data modify storage ps:ani available set value [1,2,3,4,5,6,7,8,9]
execute unless data storage ps:game unlocks run function ps:inits/unlocks
execute unless data storage ps:game current_deco run data modify storage ps:game current_deco set value {deco_a:0,deco_b:0,deco_c:0,deco_d:0,bg:0,outfit:0}
execute unless data storage ps:game current_customer run data modify storage ps:game current_customer set value {hair:0,beard:0,eyes:0,tops:0,bottoms:0,special:0}

#init animate data
data remove storage ps:ani_data data
function ps:inits/animate_data

forceload add 0 0 0 0