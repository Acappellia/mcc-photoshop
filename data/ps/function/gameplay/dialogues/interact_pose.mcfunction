execute store result score #random ps run random value 1..6

execute if score #random ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"赶快拍啊，我这个姿势很累的！","color": "white"}]
execute if score #random ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"这个动作怎样？","color": "white"}]
execute if score #random ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"……","color": "white"}]
execute if score #random ps matches 4 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"你盯着我看干什么！","color": "white"}]
execute if score #random ps matches 5 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"你看我这样拍出来好看吗？","color": "white"}]
execute if score #random ps matches 6 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"要不要再换个姿势？","color": "white"}]