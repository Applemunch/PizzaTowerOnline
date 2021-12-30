if ds_list_find_index(global.saveroom, ID) != -1  
	instance_destroy()
else if global.gameplay == 0
{
	instance_change(obj_destructiblerockblock, false);
	sprite_index = spr_tntblock;
}
