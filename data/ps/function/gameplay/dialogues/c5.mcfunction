execute unless score #waiting_c_lines ps matches 0.. run scoreboard players set #waiting_c_lines ps 3

scoreboard players set #required_deco ps 3
scoreboard players set #required_bg ps 4

execute if score #waiting_c_lines ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"我想拍一个在窗前的场景","color": "white"}]
execute if score #waiting_c_lines ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"画面里要有一些高档的瓷器","color": "white"}]
execute if score #waiting_c_lines ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"麻烦您帮我布置一下了","color": "white"}]