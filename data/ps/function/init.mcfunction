#init main scoreboard
scoreboard objectives add ps dummy
execute unless score #ps_player_id ps matches -2147483648..2147483647 run scoreboard players set #ps_player_id ps -1
execute unless score #photo_id ps matches -2147483648..2147483647 run scoreboard players set #photo_id ps -1
execute unless score #wall_photo_id ps matches -2147483648..2147483647 run scoreboard players set #wall_photo_id ps -1
execute unless score #game_status ps matches -2147483648..2147483647 run scoreboard players set #game_status ps 0

#init some global values
execute unless score #money ps matches 0.. run scoreboard players set #money ps 0

#init scoreboards
scoreboard objectives add ps_obj_id dummy
scoreboard objectives add ps_ani_id dummy
scoreboard objectives add ps_interact_time dummy
scoreboard objectives add ps_wallphoto_id dummy

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
scoreboard objectives add ps_tp_cd dummy

#init values
execute unless data storage ps:ani available run data modify storage ps:ani available set value [1,2,3,4,5,6,7,8,9]
execute unless data storage ps:game unlocks run function ps:inits/unlocks
execute unless data storage ps:game current_deco run data modify storage ps:game current_deco set value {deco_a:0,deco_b:0,deco_c:0,deco_d:0,bg:0,outfit:0}
execute unless data storage ps:game current_customer run data modify storage ps:game current_customer set value {hair:0,beard:0,eyes:0,tops:0,bottoms:0,special:0}
execute unless data storage ps:game gameplay run function ps:inits/gameplay

#init animate data
data remove storage ps:ani_data data
function ps:inits/0_enter
function ps:inits/1_waiting_a
function ps:inits/2_nod
function ps:inits/3_waiting_b
function ps:inits/4_go_upstairs
function ps:inits/5_waiting_c
function ps:inits/6_waiting_d
function ps:inits/7_pose
function ps:inits/8_pose
function ps:inits/9_pose
function ps:inits/10_pose
function ps:inits/11_pose
function ps:inits/12_pose

forceload add 0 0 0 0

#init slow tick
schedule function ps:slowtick 20t append

#init team
team add players
team modify players color gray
team modify players collisionRule never
team modify players seeFriendlyInvisibles true
