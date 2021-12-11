if room == rm_editor exit;

if ds_list_find_index(global.saveroom, id) == -1 && !global.snickchallenge
{
	// new destroy
	if sprite_index == spr_destroyable2_NEW
	{
		with instance_create(x, y, obj_destroyanim)
		{
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		}
	}
	
	// old destroy
	else
	{
		repeat 6 with instance_create(x + irandom(sprite_width), y + irandom(sprite_height), obj_pizzadebris)
		{
			image_xscale = abs(other.image_xscale);
			image_yscale = abs(other.image_yscale);
		
			if other.sprite_index == spr_halloweensmallblock
			or other.sprite_index == spr_xmasblock
			or other.sprite_index == spr_destroyable2_ss_noise
				sprite_index = spr_halloweendebris;
			else if other.sprite_index == spr_destroyable2_ss
				sprite_index = spr_pizzadebris_ss;
			else if other.sprite_index == spr_destroyable2_ss_pizza
				sprite_index = spr_pizzadebris_ss_pizza;
			else
				sprite_index = spr_pizzadebris;
		}
	}
	create_baddiegibsticks(x + sprite_width / 2, y + sprite_height / 2);
	
	with instance_create(x, y, obj_collect)
		ID = other.id;
	tile_layer_delete_at(1, x, y);
	
	if audio_is_playing(sfx_breakblock1) or audio_is_playing(sfx_breakblock2)
	{
		audio_stop_sound(sfx_breakblock1)
		audio_stop_sound(sfx_breakblock2) 
	}
	scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
}