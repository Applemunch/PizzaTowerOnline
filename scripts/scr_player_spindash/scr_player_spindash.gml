function scr_player_spindash()
{
	sprite_index = spr_snick_spindash;
	image_speed = 0.35;
	
	hsp = 0;
	if movespeed > 0
		movespeed -= (movespeed / 0.125) / 256;
	
	if !(instance_exists(dashcloudid)) && grounded
	with instance_create(x,y,obj_dashcloud)
	{
		image_xscale = other.xscale
		other.dashcloudid = id
	}
	
	if key_jump or key_slap2
	{
		scr_soundeffect(sfx_jump);
		movespeed = min(movespeed + 2, 8);
	}
	if !key_down
	{
		movespeed = 12 + (floor(movespeed) * 1.5);
		flash = true;
		scr_soundeffect(sfx_killingblow);
		
		state = states.mach3;
		sprite_index = spr_snick_tumble;
	}
}