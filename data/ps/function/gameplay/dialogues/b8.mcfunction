execute unless score #waiting_b_lines ps matches 0.. run scoreboard players set #waiting_b_lines ps 5

execute if score #waiting_b_lines ps matches 5 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"您好，请问这里可以拍cosplay吗 QAQ","color": "white"}]
execute if score #waiting_b_lines ps matches 4 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"……","color": "white"}]
execute if score #waiting_b_lines ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"好欸，那麻烦帮我拍一套这样这样的可以吗 OWO","color": "white"}]
execute if score #waiting_b_lines ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"……","color": "white"}]
execute if score #waiting_b_lines ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"嗯嗯，那我先上楼去看看 =v=","color": "white"}]