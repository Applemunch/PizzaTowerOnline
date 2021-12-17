if ds_list_find_index(global.saveroom, id) != -1  
	instance_destroy(id, false); 

if !global.panic && room != custom_lvl_room
	instance_destroy(id, false);
