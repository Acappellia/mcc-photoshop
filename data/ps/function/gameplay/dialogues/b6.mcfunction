execute unless score #waiting_b_lines ps matches 0.. run scoreboard players set #waiting_b_lines ps 5

execute if score #waiting_b_lines ps matches 5 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"这里就是红沙发照相馆吗？","color": "white"}]
execute if score #waiting_b_lines ps matches 4 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"我看这里美团分数好高，想来看一看","color": "white"}]
execute if score #waiting_b_lines ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"什么风格都能拍吗？","color": "white"}]
execute if score #waiting_b_lines ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"……","color": "white"}]
execute if score #waiting_b_lines ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"好啊，那我先去楼上看看","color": "white"}]