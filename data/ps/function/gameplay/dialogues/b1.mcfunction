execute unless score #waiting_b_lines ps matches 0.. run scoreboard players set #waiting_b_lines ps 4

execute if score #waiting_b_lines ps matches 4 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"又来找您拍照啦！","color": "white"}]
execute if score #waiting_b_lines ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"上次的照片我都挺满意的","color": "white"}]
execute if score #waiting_b_lines ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"不过这次想尝试下新的风格，看看会不会适合我","color": "white"}]
execute if score #waiting_b_lines ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"麻烦您啦，我先上楼去看看布景","color": "white"}]