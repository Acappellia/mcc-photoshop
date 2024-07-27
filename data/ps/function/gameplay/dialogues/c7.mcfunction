execute unless score #waiting_c_lines ps matches 0.. run scoreboard players set #waiting_c_lines ps 3

scoreboard players set #required_bg ps 2
scoreboard players set #required_deco ps 7

execute if score #waiting_c_lines ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"可以有一个走廊的场景吗","color": "white"}]
execute if score #waiting_c_lines ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"然后再摆一盆花","color": "white"}]
execute if score #waiting_c_lines ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"感觉这样应该会拍的很好看","color": "white"}]