execute if score #game_status ps matches 4 as @e[type=interaction,distance=..20,tag=waiting_d] on vehicle run function ps:gameplay/random_pose

tag @s add taking_shot

tp @s 153 -33 789 -90 15

effect give @s slowness infinite 9 true

#kill @e[type=item_display,tag=photo_blackbox,distance=..10]
#execute at @s run summon item_display ~ ~1.62 ~ {Tags:["photo_blackbox"],item:{id:"paper",count:1,components:{"custom_model_data":10001}}}