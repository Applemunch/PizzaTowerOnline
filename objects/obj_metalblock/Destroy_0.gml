
if  ds_list_find_index(global.saveroom, id) = -1
{
	var shit = 4;
	if sprite_index == spr_metalblock_ss
		shit = 8;
	
	repeat shit
		with instance_create(x + 32, y + 32, obj_metaldebris)
			if shit == 8
			{
				sprite_index = spr_metaldebris_ss;
				image_index = random_range(0, 7);
				hsp = random_range(-8, 8);
			}
	
	/*
	tile_layer_delete_at(1, x, y);
	tile_layer_delete_at(1, x+32, y);
	tile_layer_delete_at(1, x+32, y+32);
	tile_layer_delete_at(1, x, y+32);
	*/

	with (obj_camera)
	{
	    shake_mag=20;
	    shake_mag_acc=40/room_speed;
	}

	scr_soundeffect(sfx_breakmetal)
	ds_list_add(global.saveroom, id) 
}

depth =1