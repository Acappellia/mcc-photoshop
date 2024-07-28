gamerule maxCommandChainLength 200000

#init main scoreboard
scoreboard objectives add ps dummy

#init some global values
execute unless score #money ps matches 0.. run scoreboard players set #money ps 0
execute unless score #ps_player_id ps matches -2147483648..2147483647 run scoreboard players set #ps_player_id ps -1
execute unless score #photo_id ps matches -2147483648..2147483647 run scoreboard players set #photo_id ps -1
execute unless score #wall_photo_id ps matches -2147483648..2147483647 run scoreboard players set #wall_photo_id ps -1
execute unless score #game_status ps matches -2147483648..2147483647 run scoreboard players set #game_status ps 0
execute unless score #game_round ps matches -2147483648..2147483647 run scoreboard players set #game_round ps 1

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
scoreboard objectives add ps_music_cd custom:time_since_death

#init values
execute unless data storage ps:ani available run data modify storage ps:ani available set value [1,2,3,4,5,6,7,8,9]
execute unless data storage ps:game unlocks run function ps:inits/unlocks
execute unless data storage ps:game current_deco run data modify storage ps:game current_deco set value {deco_1:0,deco_2:0,deco_3:0,deco_4:0,bg:0,outfit:0}
#execute unless data storage ps:game current_customer run data modify storage ps:game current_customer set value {hair:0,beard:0,eyes:0,tops:0,bottoms:0,special:0}
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
function ps:inits/13_pose
function ps:inits/14_pose
function ps:inits/15_pose
function ps:inits/16_pose
function ps:inits/17_pose
function ps:inits/18_pose
function ps:inits/19_pose
function ps:inits/20_pose
function ps:inits/21_pose
function ps:inits/22_pose
function ps:inits/23_pose
function ps:inits/24_pose
function ps:inits/25_pose
function ps:inits/26_pose
function ps:inits/27_enter
function ps:inits/28_enter
function ps:inits/29_pedestrain
function ps:inits/30_pedestrain
function ps:inits/31_pedestrain
function ps:inits/32_waiting_c
function ps:inits/33_waiting_c

forceload add 0 0 0 0

#init slow tick
schedule function ps:slowtick 20t append

#init team
team add players
team modify players color gray
team modify players collisionRule never
team modify players seeFriendlyInvisibles true
