function ps:inits/gameplay
function ps:inits/unlocks
scoreboard players set #money ps 0
gamemode adventure @a
xp set @a 0 levels
xp set @a 0 points
clear @a

function ps:debug/kill_all_animation
data remove storage ps:ani frame_list
data modify storage ps:ani available set value [1,2,3,4,5,6,7,8,9]
scoreboard players set #game_status ps 0
execute positioned 151 -44 773 run function ps:animation/add {ani_id:29}
execute positioned 151 -44 773 run function ps:animation/add {ani_id:30}
execute positioned 151 -44 773 run function ps:animation/add {ani_id:31}

execute store result score #random_skin_id ps run random value 0..5
execute as 0-0-0-0-1 on passengers as @s[type=item_display] run function ps:gameplay/random_skin

execute store result score #random_skin_id ps run random value 0..5
execute as 0-0-0-0-2 on passengers as @s[type=item_display] run function ps:gameplay/random_skin

execute store result score #random_skin_id ps run random value 0..5
execute as 0-0-0-0-3 on passengers as @s[type=item_display] run function ps:gameplay/random_skin

data modify block 