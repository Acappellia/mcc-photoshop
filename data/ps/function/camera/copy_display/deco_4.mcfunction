data modify storage ps:tmp photo_data prepend value {}
data modify storage ps:tmp photo_data[0].item set from entity @s item
data modify storage ps:tmp photo_data[0].Tags set value ["ps_photo","deco_4_photo"]

data modify storage ps:tmp photo_data[0].transformation set value [0.9238795325112867, 0.0000000000000000, 0.0038268343236509, 0.0000000000000000, 0.0000000000000000, 1.0000000000000000, 0.0000000000000000, 0.0000000000000000, -0.3826834323650898, 0.0000000000000000, 0.0092387953251129, 0.0000000000000000, 0.0000000000000000, 0.0000000000000000, 0.0000000000000000, 0.5000000000000000]