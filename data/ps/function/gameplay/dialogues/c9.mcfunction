execute unless score #waiting_c_lines ps matches 0.. run scoreboard players set #waiting_c_lines ps 3

scoreboard players set #required_deco ps 4

execute if score #waiting_c_lines ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"我看这有个果篮好漂亮欸","color": "white"}]
execute if score #waiting_c_lines ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"可以帮我摆一下吗","color": "white"}]
execute if score #waiting_c_lines ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"辛苦你啦","color": "white"}]