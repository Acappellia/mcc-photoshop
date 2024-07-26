setblock 0 -64 0 white_shulker_box{Items:[{id:"stone",Slot:0b,count:1},{id:"stone",Slot:1b,count:1},{id:"stone",Slot:2b,count:1},{id:"stone",Slot:3b,count:1},{id:"stone",Slot:4b,count:1},{id:"stone",Slot:5b,count:1},{id:"stone",Slot:6b,count:1},{id:"stone",Slot:7b,count:1},{id:"stone",Slot:8b,count:1}]}
data modify block 0 -64 0 Items[{Slot:0b}] merge from storage ps:game unlocks.bg.0.item
data modify block 0 -64 0 Items[{Slot:1b}] merge from storage ps:game unlocks.bg.1.item
data modify block 0 -64 0 Items[{Slot:2b}] merge from storage ps:game unlocks.bg.2.item
data modify block 0 -64 0 Items[{Slot:3b}] merge from storage ps:game unlocks.bg.3.item
data modify block 0 -64 0 Items[{Slot:4b}] merge from storage ps:game unlocks.bg.4.item
data modify block 0 -64 0 Items[{Slot:5b}] merge from storage ps:game unlocks.bg.5.item
data modify block 0 -64 0 Items[{Slot:6b}] merge from storage ps:game unlocks.bg.6.item
data modify block 0 -64 0 Items[{Slot:7b}] merge from storage ps:game unlocks.bg.7.item
data modify block 0 -64 0 Items[{Slot:8b}] merge value {id:"arrow",count:1,components:{item_name:'"退出选择"',food:{saturation:0,nutrition:0,eat_seconds:100000,can_always_eat:1b},"minecraft:custom_data":{ps_deco_sel:1}}}
item replace entity @s hotbar.0 from block 0 -64 0 container.0
item replace entity @s hotbar.1 from block 0 -64 0 container.1
item replace entity @s hotbar.2 from block 0 -64 0 container.2
item replace entity @s hotbar.3 from block 0 -64 0 container.3
item replace entity @s hotbar.4 from block 0 -64 0 container.4

item replace entity @s hotbar.8 from block 0 -64 0 container.8
setblock 0 -64 0 bedrock