if  ds_list_find_index(global.saveroom, id) = -1
{
	if global.panic = true
	{
		repeat (6) with instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_pizzadebris)
		{
			if other.sprite_index == spr_destroyable2escape_ss
			or other.sprite_index == spr_destroyable2escape_ss_noise
				sprite_index = spr_debrisescape_ss
			else
				sprite_index = spr_debrisescape
		}
		create_baddiegibsticks(x + sprite_width / 2, y + sprite_height / 2);
		
		with instance_create(x, y, obj_collect)
			sprite_index = choose(spr_fishcollect, spr_bananacollect, spr_eggcollect, spr_shrimpcollect, spr_baconcollect);
		tile_layer_delete_at(1, x, y);
		
		if audio_is_playing(sfx_breakblock1) or audio_is_playing(sfx_breakblock2)
		{
			audio_stop_sound(sfx_breakblock1)
			audio_stop_sound(sfx_breakblock2) 
		}
		scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
		
		ds_list_add(global.saveroom, id) 
	}
}