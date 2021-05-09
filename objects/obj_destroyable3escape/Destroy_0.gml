if  ds_list_find_index(global.saveroom, id) = -1
{
		if global.panic = true
	{
repeat (7) with instance_create(x+ 32,y+32,obj_debris)
sprite_index = spr_bigdebrisescape

tile_layer_delete_at(1, x, y);
tile_layer_delete_at(1, x+32, y);
tile_layer_delete_at(1, x+32, y+32);
tile_layer_delete_at(1, x, y+32);
if audio_is_playing(sfx_breakblock1) or audio_is_playing(sfx_breakblock2)
{
audio_stop_sound(sfx_breakblock1)
audio_stop_sound(sfx_breakblock2) 
}
scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
ds_list_add(global.saveroom, id) 

	}
}

