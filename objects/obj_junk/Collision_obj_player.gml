//Grab
if (other.state =states.handstandjump or other.state = states.punch) && other.character != "S"
{
	instance_create(x + (obj_player1.xscale * 40),y, obj_punchdust)
	with other
	{
		image_index = 0
		sprite_index = spr_haulingstart
		heavy = true
		baddiegrabbedID = other.id
		state = states.grab
	}
	
	if scr_checkskin(checkskin.p_anton)
		scr_soundeffect(sfx_punchball_pickup);
	playerid = other.object_index
	grabbed = true
}

// Bump
if thrown == false && stuntouchbuffer <= 0 && vsp > 0 && (other.character == "S" or other.character == "V")
{
	if other.state == states.mach2
	{
		grounded = false;
		
		scr_soundeffect(sfx_bumpwall);
		if scr_checkskin(checkskin.p_anton)
			scr_soundeffect(sfx_punchball_bounce);
		stuntouchbuffer = 50;
	
		if other.x != x
			image_xscale = -sign(x - other.x);
		
		other.movespeed = 0;
		other.state = states.bump;
		other.hsp = -2.5;
		other.vsp = -3;
		
		vsp = -5;
		hsp = -image_xscale * 4;
	}
	else if other.state == states.mach3
	{
		grounded = false;
		
		scr_soundeffect(sfx_bumpwall);
		scr_soundeffect(sfx_killingblow);
		if scr_checkskin(checkskin.p_anton)
			scr_soundeffect(sfx_punchball_bounce);
		stuntouchbuffer = 50;
		
		if other.x != x
			image_xscale = -sign(x - other.x)
	
		machhitAnim = true;
		
		vsp = -5;
		hsp = other.movespeed * other.xscale;
	}
	thrown = true;
}