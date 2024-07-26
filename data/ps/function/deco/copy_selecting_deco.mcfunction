data remove storage ps:tmp selecting_deco
$execute if score #deco_picktype ps matches 0 run data modify storage ps:tmp selecting_deco set from storage ps:game unlocks.deco.$(id)
$execute if score #deco_picktype ps matches 1 run data modify storage ps:tmp selecting_deco set from storage ps:game unlocks.bg.$(id)
$execute if score #deco_picktype ps matches 2 run data modify storage ps:tmp selecting_deco set from storage ps:game unlocks.outfit.$(id)

data modify entity @s item set from storage ps:tmp selecting_deco.display_item

playsound ui.button.click block @a ~ ~ ~ 0.5 1