tag @s remove f1
tag @s remove f2
tag @s remove f3
tag @s remove outside

execute positioned 145 -40 799 as @a[distance=..3] run function ps:player/1f_to_2f
execute positioned 145 -35 806 as @a[distance=..3] run function ps:player/2f_to_1f
execute positioned 140 -34 808 as @a[distance=..3] run function ps:player/2f_to_3f
execute positioned 140 -23 811 as @a[distance=..3] run function ps:player/3f_to_2f

execute if entity @s[x=135,z=780,y=-45,dx=18,dz=20,dy=9] run tag @s add f1
execute if entity @s[x=135,z=780,y=-35,dx=30,dz=30,dy=10] run tag @s add f2
execute if entity @s[x=135,z=795,y=-24,dx=20,dz=20,dy=9] run tag @s add f3
tag @s[tag=!f1,tag=!f2,tag=!f3] add outside

scoreboard players set @a[tag=!in_tp] ps_tp_cd 0
tag @a remove in_tp