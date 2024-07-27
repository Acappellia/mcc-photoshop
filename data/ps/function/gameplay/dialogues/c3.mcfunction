execute unless score #waiting_c_lines ps matches 0.. run scoreboard players set #waiting_c_lines ps 3

scoreboard players set #required_bg ps 0
scoreboard players set #required_deco ps 7

execute if score #waiting_c_lines ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"要不这样……","color": "white"}]
execute if score #waiting_c_lines ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"……还是这样？","color": "white"}]
execute if score #waiting_c_lines ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"要不您看着布置吧，高级一点就好！","color": "white"}]