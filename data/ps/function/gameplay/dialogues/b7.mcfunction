execute unless score #waiting_b_lines ps matches 0.. run scoreboard players set #waiting_b_lines ps 11

execute if score #waiting_b_lines ps matches 11 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"请问您这收老相机吗？","color": "white"}]
execute if score #waiting_b_lines ps matches 10 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"……","color": "white"}]
execute if score #waiting_b_lines ps matches 9 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"唉，那就算了吧","color": "white"}]
execute if score #waiting_b_lines ps matches 8 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"……","color": "white"}]
execute if score #waiting_b_lines ps matches 7 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"这……照相馆里和自己拍的有啥区别吗？","color": "white"}]
execute if score #waiting_b_lines ps matches 6 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"……","color": "white"}]
execute if score #waiting_b_lines ps matches 5 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"是吗？这我可头一回听说。","color": "white"}]
execute if score #waiting_b_lines ps matches 4 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"您这拍照贵吗？","color": "white"}]
execute if score #waiting_b_lines ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"……","color": "white"}]
execute if score #waiting_b_lines ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"还挺不错，要不给我来两张吧。","color": "white"}]
execute if score #waiting_b_lines ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"是要先上楼挑挑？好嘞","color": "white"}]
