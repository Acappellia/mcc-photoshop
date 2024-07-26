#init main scoreboard
scoreboard objectives add ps dummy


#init scoreboards
scoreboard objectives add ps_obj_id dummy
scoreboard objectives add ps_ani_id dummy

#init values
execute unless data storage ps:ani available run data modify storage ps:ani available_list set value [1,2,3,4,5,6,7,8,9]
function ps:inits/animate_data