execute unless score #waiting_c_lines ps matches 0.. run scoreboard players set #waiting_c_lines ps 3

scoreboard players set #required_bg ps 0
scoreboard players set #required_deco ps 2

execute if score #waiting_c_lines ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"有没有复古一点的摆设","color": "white"}]
execute if score #waiting_c_lines ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"场景就用绒布场景就可以了","color": "white"}]
execute if score #waiting_c_lines ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"总之您帮我挑挑吧","color": "white"}]