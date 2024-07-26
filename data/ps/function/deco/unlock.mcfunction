$execute if score #deco_picktype ps matches 0 run data remove storage ps:game unlocks.deco.$(id).locked
$execute if score #deco_picktype ps matches 0 run data modify storage ps:game unlocks.deco.$(id).item.id set value "minecraft:firework_star"
$execute if score #deco_picktype ps matches 0 run data modify storage ps:game unlocks.deco.$(id).display_item.id set value "minecraft:firework_star"
$execute if score #deco_picktype ps matches 1 run data remove storage ps:game unlocks.bg.$(id).locked
$execute if score #deco_picktype ps matches 1 run data modify storage ps:game unlocks.bg.$(id).item.id set value "minecraft:firework_star"
$execute if score #deco_picktype ps matches 1 run data modify storage ps:game unlocks.bg.$(id).display_item.id set value "minecraft:firework_star"
$execute if score #deco_picktype ps matches 2 run data remove storage ps:game unlocks.outfit.$(id).locked
$execute if score #deco_picktype ps matches 2 run data modify storage ps:game unlocks.outfit.$(id).item.id set value "minecraft:firework_star"
$execute if score #deco_picktype ps matches 2 run data modify storage ps:game unlocks.outfit.$(id).display_item.id set value "minecraft:firework_star"