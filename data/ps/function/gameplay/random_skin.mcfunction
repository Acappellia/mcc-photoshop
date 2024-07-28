execute store result score #current_skin_cmd ps run data get entity @s item.components."minecraft:custom_model_data"
scoreboard players operation #current_skin_cmd ps += #random_skin_id ps
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run scoreboard players get #current_skin_cmd ps