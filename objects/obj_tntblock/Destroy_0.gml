if ds_list_find_index(global.saveroom, ID) == -1
{ 
	instance_create(x+32,y+32,obj_playerexplosion)

	if place_meeting(x+1,y,obj_rockblock) 
	with ( instance_place(x+1,y,obj_rockblock))
	alarm[1] = 8

	if place_meeting(x-1,y,obj_rockblock) 
	with ( instance_place(x-1,y,obj_rockblock))
	alarm[1] = 8

	if place_meeting(x,y+1,obj_rockblock) 
	with ( instance_place(x,y+1,obj_rockblock))
	alarm[1] = 8

	if place_meeting(x,y-1,obj_rockblock) 
	with ( instance_place(x,y-1,obj_rockblock))
	alarm[1] = 8

	repeat(6) instance_create(x+32,y+32,obj_tntblockdebris)
	ds_list_add(global.saveroom, ID) 
}