if ds_list_find_index(global.saveroom, id) != -1  
	instance_destroy(id, false); 

if !global.panic && room != custom_lvl_room
	instance_destroy(id, false);

if global.modifier == mods.no_toppings && place_meeting(x, y, obj_notoppingmod_del)
	instance_destroy(id, false);
