execute store result score #random ps run random value 1..5

execute if score #random ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"哇, 你简直是抽象摄影大师！","color": "white"}]
execute if score #random ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"这照片里我人呢？","color": "white"}]
execute if score #random ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"你拍的这**是什么***#￥%@#%……","color": "white"}]
execute if score #random ps matches 4 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"欸，这就是你们的成品？","color": "white"}]
execute if score #random ps matches 5 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"唉，真是上了当了……","color": "white"}]