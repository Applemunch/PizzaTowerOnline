if ds_list_find_index(global.saveroom, id) != -1  
	instance_destroy()

if !global.panic && room != custom_lvl_room
	instance_destroy()