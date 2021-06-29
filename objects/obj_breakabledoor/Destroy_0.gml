repeat 8
{
	with instance_create(x + sprite_width / 2, y + sprite_height / 2, obj_wooddebris)
	{
		image_xscale = abs(other.image_xscale);
		image_yscale = abs(other.image_yscale);
		
		sprite_index = spr_breakabledoordebris;
	}
}

scr_soundeffect(sfx_breakblock1, sfx_breakblock2);
ds_list_add(global.saveroom, id)