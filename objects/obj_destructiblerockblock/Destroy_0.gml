if ds_list_find_index(global.saveroom, ID) = -1
{
	instance_create(x,y,obj_playerexplosion)

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

	repeat 7
	{
		with instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_debris)
		{
			image_xscale = abs(other.image_xscale);
			image_yscale = abs(other.image_yscale);
			
			if other.sprite_index == spr_tntblock
				sprite_index = spr_tntblockdebris
			else
				sprite_index = spr_rockdebris
		}
	}
	ds_list_add(global.saveroom, ID) 
}