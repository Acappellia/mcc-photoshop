execute unless score #waiting_c_lines ps matches 0.. run scoreboard players set #waiting_c_lines ps 2

scoreboard players set #required_deco ps 6

execute if score #waiting_c_lines ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"您这里我看有个留声机挺不错的","color": "white"}]
execute if score #waiting_c_lines ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"帮我摆一个这个吧，背景可以简单一点","color": "white"}]