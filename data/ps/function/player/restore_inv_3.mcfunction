clear @s
setblock 0 -64 0 white_shulker_box
data modify block 0 -64 0 Items set from storage ps:player_storage boxes[0].Items
item replace entity @s inventory.0 from block 0 -64 0 container.0
item replace entity @s inventory.1 from block 0 -64 0 container.1
item replace entity @s inventory.2 from block 0 -64 0 container.2
item replace entity @s inventory.3 from block 0 -64 0 container.3
item replace entity @s inventory.4 from block 0 -64 0 container.4
item replace entity @s inventory.5 from block 0 -64 0 container.5
item replace entity @s inventory.6 from block 0 -64 0 container.6
item replace entity @s inventory.7 from block 0 -64 0 container.7
item replace entity @s inventory.8 from block 0 -64 0 container.8
item replace entity @s inventory.9 from block 0 -64 0 container.9
item replace entity @s inventory.10 from block 0 -64 0 container.10
item replace entity @s inventory.11 from block 0 -64 0 container.11
item replace entity @s inventory.12 from block 0 -64 0 container.12
item replace entity @s inventory.13 from block 0 -64 0 container.13
item replace entity @s inventory.14 from block 0 -64 0 container.14
item replace entity @s inventory.15 from block 0 -64 0 container.15
item replace entity @s inventory.16 from block 0 -64 0 container.16
item replace entity @s inventory.17 from block 0 -64 0 container.17
item replace entity @s inventory.18 from block 0 -64 0 container.18
item replace entity @s inventory.19 from block 0 -64 0 container.19
item replace entity @s inventory.20 from block 0 -64 0 container.20
item replace entity @s inventory.21 from block 0 -64 0 container.21
item replace entity @s inventory.22 from block 0 -64 0 container.22
item replace entity @s inventory.23 from block 0 -64 0 container.23
item replace entity @s inventory.24 from block 0 -64 0 container.24
item replace entity @s inventory.25 from block 0 -64 0 container.25
item replace entity @s inventory.26 from block 0 -64 0 container.26
data remove storage ps:player_storage boxes[0]
setblock 0 -64 0 bedrock
setblock 0 -64 0 white_shulker_box
data modify block 0 -64 0 Items set from storage ps:player_storage boxes[0].Items
item replace entity @s hotbar.0 from block 0 -64 0 container.0
item replace entity @s hotbar.1 from block 0 -64 0 container.1
item replace entity @s hotbar.2 from block 0 -64 0 container.2
item replace entity @s hotbar.3 from block 0 -64 0 container.3
item replace entity @s hotbar.4 from block 0 -64 0 container.4
item replace entity @s hotbar.5 from block 0 -64 0 container.5
item replace entity @s hotbar.6 from block 0 -64 0 container.6
item replace entity @s hotbar.7 from block 0 -64 0 container.7
item replace entity @s hotbar.8 from block 0 -64 0 container.8
item replace entity @s weapon.offhand from block 0 -64 0 container.9
item replace entity @s armor.head from block 0 -64 0 container.10
item replace entity @s armor.chest from block 0 -64 0 container.11
item replace entity @s armor.legs from block 0 -64 0 container.12
item replace entity @s armor.feet from block 0 -64 0 container.13
data remove storage ps:player_storage boxes[0]
setblock 0 -64 0 bedrock