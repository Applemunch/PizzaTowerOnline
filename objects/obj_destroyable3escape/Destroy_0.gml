if ds_list_find_index(global.saveroom, id) == -1 && global.panic
{
	var rep = global.gameplay == 0 ? 6 : 4;
	for(var i = 0; i <= rep; i++)
	{
		if global.gameplay == 0
		{
			var xx = sprite_width / 2;
			var yy = sprite_height / 2;
		}
		else
		{
			xx = random(sprite_width / 2) + sprite_width / 4;
			yy = random(sprite_height / 2) + sprite_height / 4;
		}
		with instance_create(x + xx, y + yy, obj_debris)
		{
			image_xscale = abs(other.image_xscale)
			image_yscale = abs(other.image_yscale)
		
			if global.gameplay == 0
				sprite_index = spr_bigdebrisescape
			else
				sprite_index = spr_debrisescape_NEW
		}
	}
	
	if audio_is_playing(sfx_breakblock1) or audio_is_playing(sfx_breakblock2)
	{
		audio_stop_sound(sfx_breakblock1)
		audio_stop_sound(sfx_breakblock2)
	}
	scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
	ds_list_add(global.saveroom, id) 
}
