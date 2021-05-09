ds_list_add(global.baddieroom, id) 


with obj_supriseenemy
if trigger = other.trigger
alarm[0] = 1


if !place_meeting(x,y,obj_supriseenemy)
instance_destroy()

