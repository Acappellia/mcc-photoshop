data modify entity @s item set value {id:"firework_star",count:1,components:{custom_model_data:0,firework_explosion:{shape:"small_ball",colors:[I;0]}}}
data modify entity @s Tags prepend from storage ps:tmp part_data.name
data modify entity @s item.components."minecraft:custom_model_data" set from storage ps:tmp part_data.custom_model_data
data modify entity @s item.components."minecraft:firework_explosion".colors[0] set from storage ps:tmp part_data.firework_color
data modify entity @s transformation set from storage ps:tmp part_data.init_pos