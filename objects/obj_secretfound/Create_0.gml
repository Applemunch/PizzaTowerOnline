if ds_list_find_index(global.saveroom, id) == -1 && !global.snickchallenge
&& global.gameplay == 0
{
	global.secretfound += 1

	var outof = 6;
	if string_startswith(room_get_name(room), "etb_")
		outof = 2;
	if string_startswith(room_get_name(room), "floor2_")
		outof = 3;

	with obj_tv
	{
		message = ("YOU HAVE FOUND " + string(global.secretfound) + " SECRET OUT OF " + string(outof))
		showtext = true
		alarm[0] = 150
	}

	scr_soundeffect(sfx_secretfound)
	ds_list_add(global.saveroom, id) 
}
instance_destroy();
