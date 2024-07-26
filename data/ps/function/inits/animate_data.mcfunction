data remove storage ps:ani_data data

#init new animation type
data modify storage ps:ani_data data append value {ani_tag:"pedestrian"}
#set init data
data modify storage ps:ani_data data[-1].parts.part_1 set value {name:"body",init_pos:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1],custom_model_data:1001,firework_color:114514}
data modify storage ps:ani_data data[-1].parts.part_2 set value {name:"head",init_pos:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1],custom_model_data:1002,firework_color:114514}
data modify storage ps:ani_data data[-1].parts.part_3 set value {name:"left_hand",init_pos:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1],custom_model_data:1003,firework_color:114514}
data modify storage ps:ani_data data[-1].parts.part_4 set value {name:"right_hand",init_pos:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1],custom_model_data:1004,firework_color:114514}
data modify storage ps:ani_data data[-1].parts.part_5 set value {name:"left_leg",init_pos:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1],custom_model_data:1005,firework_color:114514}
data modify storage ps:ani_data data[-1].parts.part_6 set value {name:"right_leg",init_pos:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1],custom_model_data:1006,firework_color:114514}
#set 1st frame
data modify storage ps:ani_data data[-1].frames append value {}
data modify storage ps:ani_data data[-1].frames[-1].part_1 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_2 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_3 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_4 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_5 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_6 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
#append another frame
data modify storage ps:ani_data data[-1].frames append value {}
data modify storage ps:ani_data data[-1].frames[-1].part_1 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_2 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_3 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_4 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_5 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_6 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
#if the following line is added, the entity will be tped forward for a certain distance in this frame
#the value here does not affect the distance, it was configured elsewhere
data modify storage ps:ani_data data[-1].frames[-1].tp_forward set value 1
#...
#if this frame is not key frame, don't skip and add an empty frame
data modify storage ps:ani_data data[-1].frames append value {}
#...
#append last frame
data modify storage ps:ani_data data[-1].frames append value {}
data modify storage ps:ani_data data[-1].frames[-1].part_1 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_2 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_3 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_4 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_5 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].part_6 set value {interpolation_duration:1,start_interpolation:-1,transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,2]}
data modify storage ps:ani_data data[-1].frames[-1].is_last set value 1
#add the following line in last frame if another animation should play after this
#ani_id value is the animation id in this definition file, starting from 0
#ani_id can be self to create a loop animation
#don't add anything if this is a one_time animation
data modify storage ps:ani_data data[-1].frames[-1].next set value {ani_id:0}
#add the following line in last frame if the entity should be keep static when animation ends instead of killing it
#note: the entity will be untracked if not killed
data modify storage ps:ani_data data[-1].frames[-1].keep_alive set value 1

#append another animation type
data modify storage ps:ani_data data append value {ani_tag:"car"}
#...