playsound entity.cat.ambient player @a ~ ~ ~ 1 2

execute store result score #random ps run random value 1..6

execute if score #random ps matches 1 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"再来一张吧！","color": "white"}]
execute if score #random ps matches 2 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"等等，刚才我是不是眨眼了？","color": "white"}]
execute if score #random ps matches 3 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"等等我刚刚没准备好！","color": "white"}]
execute if score #random ps matches 4 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"再拍一张！","color": "white"}]
execute if score #random ps matches 5 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"再拍再拍！","color": "white"}]
execute if score #random ps matches 6 run tellraw @a [{"text":"<","color": "white"},{"nbt": "gameplay.npc_name","storage": "ps:game","color": "aqua"},{"text":"> ","color": "white"},{"text":"感觉不错！再来一张！","color": "white"}]