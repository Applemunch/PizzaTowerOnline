if ds_list_find_index(global.saveroom, id) = -1
{
	scr_soundeffect(sfx_breakblock1, sfx_breakblock2);
	
	with instance_place(x + 1, y, obj_rockblock)
		alarm[1] = 8;
	with instance_place(x - 1, y, obj_rockblock)
		alarm[1] = 8;
	with instance_place(x, y + 1, obj_rockblock)
		alarm[1] = 8;
	with instance_place(x, y - 1, obj_rockblock)
		alarm[1] = 8;
	
	repeat 7
	{
		with instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_debris)
			sprite_index = spr_rockdebris
	}
	
	ds_list_add(global.saveroom, id);
}
