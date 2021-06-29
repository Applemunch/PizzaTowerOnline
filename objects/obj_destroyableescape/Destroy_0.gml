if ds_list_find_index(global.saveroom, id) = -1 && global.panic
{
	with instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_debris)
	{
		image_xscale = abs(other.image_xscale);
		image_yscale = abs(other.image_yscale);
			
		sprite_index = spr_debrisescape
	}
	tile_layer_delete_at(1, x, y);

	if audio_is_playing(sfx_breakblock1) or audio_is_playing(sfx_breakblock2)
	{
		audio_stop_sound(sfx_breakblock1)
		audio_stop_sound(sfx_breakblock2) 
	}
	scr_soundeffect(sfx_breakblock1, sfx_breakblock2)

	ds_list_add(global.saveroom, id) 
}