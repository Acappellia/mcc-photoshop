execute store result score #random_pose ps run random value 1..5

execute if score #random_pose ps matches 1 run function ps:animation/update {ani_id:7}
execute if score #random_pose ps matches 2 run function ps:animation/update {ani_id:8}
execute if score #random_pose ps matches 3 run function ps:animation/update {ani_id:9}
execute if score #random_pose ps matches 4 run function ps:animation/update {ani_id:10}
execute if score #random_pose ps matches 5 run function ps:animation/update {ani_id:11}