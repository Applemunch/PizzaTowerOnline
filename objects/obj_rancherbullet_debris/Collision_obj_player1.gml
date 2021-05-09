with other
{
	if character = "V"
		scr_hurtplayer(object_index)
	else if state != states.ghost && state != states.parry
	{
		grav = grav/2
		state = states.ghost
		sprite_index = spr_ghostidle
		with instance_create(x,y,obj_sausageman_dead)
		{
			hsp = other.image_xscale * 3
			image_xscale = -other.image_xscale
	
			sprite_index = other.spr_dead
		
			spr_palette = other.spr_palette
			paletteselect = other.paletteselect
			haspalette = true;
		}
		other.debris = false;
		instance_destroy(other)
	}
}