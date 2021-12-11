if room == rm_editor exit;

if ds_list_find_index(global.saveroom, id) == -1 && global.panic
{
	// new destroy
	if sprite_index == spr_bigbreakableescape_NEW
	{
		with instance_create(x, y, obj_destroyanim)
		{
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
			sprite_index = spr_bigbreakableescapedes_NEW;
		}
	}
	
	// old destroy
	else
	{
		repeat 6 with instance_create(x + irandom(sprite_width), y + irandom(sprite_height), obj_debris)
		{
			image_xscale = abs(other.image_xscale)
			image_yscale = abs(other.image_yscale)
		
			if other.sprite_index == spr_destroyable2bigescape_ss
			or other.sprite_index == spr_destroyable2bigescape_ss_noise
				sprite_index = spr_bigdebrisescape_ss
			else
				sprite_index = spr_bigdebrisescape
		}
	}
	
	if content == obj_null
	{
		with instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_pizzaslice)
			hsp = 2
		with instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_pizzaslice)
			hsp = -2
	}
	else
		instance_create(x + sprite_width / 2, y + sprite_height / 2, content);
	
	create_baddiegibsticks(x + sprite_width / 2, y + sprite_height / 2);
	
	/*
	tile_layer_delete_at(1, x, y);
	tile_layer_delete_at(1, x+32, y);
	tile_layer_delete_at(1, x+32, y+32);
	tile_layer_delete_at(1, x, y+32);
	*/
		
	if audio_is_playing(sfx_breakblock1) or audio_is_playing(sfx_breakblock2)
	{
		audio_stop_sound(sfx_breakblock1)
		audio_stop_sound(sfx_breakblock2)
	}
	scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
	ds_list_add(global.saveroom, id)
}