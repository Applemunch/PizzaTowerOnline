if ds_list_find_index(global.saveroom, id) = -1 && global.panic
{
	var rep = global.gameplay == 0 ? 4 : 2; // amount of debris
	repeat rep
	{
		with instance_create(x + irandom(sprite_width), y + irandom(sprite_height), obj_debris)
		{
			image_xscale = abs(other.image_xscale);
			image_yscale = abs(other.image_yscale);
			
			sprite_index = spr_debrisescape;
			if global.gameplay != 0
				sprite_index = spr_debrisescape_NEW;
		}
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