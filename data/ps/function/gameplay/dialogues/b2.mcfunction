execute unless score #waiting_b_lines ps matches 0.. run scoreboard players set #waiting_b_lines ps 2

execute if score #waiting_b_lines ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"我来拍张照片，最好能快点，急着要","color": "white"}]
execute if score #waiting_b_lines ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"我先上楼了","color": "white"}]