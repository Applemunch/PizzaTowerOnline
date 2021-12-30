if ds_list_find_index(global.saveroom, ID) == -1
{
	instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_playerexplosion);

	with instance_place(x + 1, y, obj_rockblock)
		alarm[1] = 8;
	with instance_place(x - 1, y, obj_rockblock)
		alarm[1] = 8;
	with instance_place(x, y + 1, obj_rockblock)
		alarm[1] = 8;
	with instance_place(x, y - 1, obj_rockblock)
		alarm[1] = 8;

	repeat 6 instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_tntblockdebris);
	ds_list_add(global.saveroom, ID);
}
