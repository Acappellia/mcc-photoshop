data modify storage ps:tmp photo_data prepend value {}
data modify storage ps:tmp photo_data[0].item set from entity @s item
data modify storage ps:tmp photo_data[0].transformation set from entity @s transformation
data modify storage ps:tmp photo_data[0].Tags set value ["ps_photo","deco_1_photo"]

function ps:camera/copy_display/flattern_display