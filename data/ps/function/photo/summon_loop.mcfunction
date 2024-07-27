execute summon item_display run function ps:photo/copy_data

data remove storage ps:tmp photo_data[0]
execute if data storage ps:tmp photo_data[0] run function ps:photo/summon_loop