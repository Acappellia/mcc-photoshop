execute summon item_display run function ps:photo/summon_base
#execute summon item_display run function ps:photo/summon_frame

data modify storage ps:tmp photo_data set from entity @s SelectedItem.components."minecraft:custom_data".photo_data
execute if data storage ps:tmp photo_data[0] run function ps:photo/summon_loop