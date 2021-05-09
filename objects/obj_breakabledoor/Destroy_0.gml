repeat 8
{
	with instance_create(x+ 16,y+ 50,obj_wooddebris)
		sprite_index = spr_breakabledoordebris;
}

scr_soundeffect(sfx_breakblock1, sfx_breakblock2);
ds_list_add(global.saveroom, id)