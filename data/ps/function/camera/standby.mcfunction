execute as @e[type=interaction,distance=..10,tag=waiting_d] on vehicle run return run function ps:animation/update {ani_id:7}

tag @s add taking_shot

tp @s 153 -33 789 -90 15

effect give @s slowness infinite 9 true

#kill @e[type=item_display,tag=photo_blackbox,distance=..10]
#execute at @s run summon item_display ~ ~1.62 ~ {Tags:["photo_blackbox"],item:{id:"paper",count:1,components:{"custom_model_data":10001}}}