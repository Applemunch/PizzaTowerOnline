if room == rm_editor exit;

if ds_list_find_index(global.saveroom, id) = -1 && !global.snickchallenge
{
	// new destroy
	if sprite_index == spr_bigbreakable_NEW
	{
		with instance_create(x, y, obj_destroyanim)
		{
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
			sprite_index = spr_bigbreakabledes_NEW;
		}
	}
	
	// old destroy
	else
	{
		repeat 6 with instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_debris)
		{
			image_xscale = abs(other.image_xscale)
			image_yscale = abs(other.image_yscale)
		
			if other.sprite_index == spr_halloweenbigblock
			or other.sprite_index == spr_xmasbigblock
			or other.sprite_index == spr_destroyable2big_ss_noise
				sprite_index = spr_halloweenbigdebris
			else if other.sprite_index == spr_destroyable2big_ss
				sprite_index = spr_bigpizzadebris_ss
			else
				sprite_index = spr_bigpizzadebris
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