scoreboard players set #money_to_give ps 120

data modify storage ps:tmp photo_custom_data set from entity @s SelectedItem.components."minecraft:custom_data"

execute store result score #photo_round ps run data get storage ps:tmp photo_custom_data.game_round
execute unless score #game_round ps = #photo_round ps run scoreboard players remove #money_to_give ps 100
execute unless data storage ps:tmp photo_custom_data.photo_valid run scoreboard players remove #money_to_give ps 100

scoreboard players reset #deco_ok ps

execute store result score #test_deco_id ps run data get storage ps:tmp photo_custom_data.deco_list.deco_1
execute if score #test_deco_id ps = #required_deco ps run scoreboard players set #deco_ok ps 1
execute store result score #test_deco_id ps run data get storage ps:tmp photo_custom_data.deco_list.deco_2
execute if score #test_deco_id ps = #required_deco ps run scoreboard players set #deco_ok ps 1
execute store result score #test_deco_id ps run data get storage ps:tmp photo_custom_data.deco_list.deco_3
execute if score #test_deco_id ps = #required_deco ps run scoreboard players set #deco_ok ps 1
execute store result score #test_deco_id ps run data get storage ps:tmp photo_custom_data.deco_list.deco_4
execute if score #test_deco_id ps = #required_deco ps run scoreboard players set #deco_ok ps 1

execute if score #deco_ok ps matches 1 run scoreboard players add #money_to_give ps 30

scoreboard players reset #bg_ok ps

execute store result score #test_bg_id ps run data get storage ps:tmp photo_custom_data.deco_list.bg
execute if score #test_bg_id ps = #required_bg ps run scoreboard players set #bg_ok ps 1

execute if score #bg_ok ps matches 1 run scoreboard players add #money_to_give ps 50

execute if score #money_to_give ps matches ..0 run scoreboard players set #money_to_give ps 0

execute if score #money_to_give ps matches ..90 run function ps:gameplay/dialogues/give_money_unhappy
execute if score #money_to_give ps matches 91..130 run function ps:gameplay/dialogues/give_money
execute if score #money_to_give ps matches 131.. run function ps:gameplay/dialogues/give_money_happy

playsound entity.cat.ambient player @a ~ ~ ~ 1 2
playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 2
tellraw @a [{"text": "> ","color": "white"},{"text": "获得了 ","color": "gray"},{"score": {"name": "#money_to_give","objective": "ps"},"color": "yellow"},{"text": " 金币","color": "gray"}]

scoreboard players operation #money ps += #money_to_give ps
item modify entity @s weapon.mainhand ps:remove_1

execute as @a[tag=f2] run function ps:player/show_blackscreen
schedule function ps:gameplay/final_kill 20t replace