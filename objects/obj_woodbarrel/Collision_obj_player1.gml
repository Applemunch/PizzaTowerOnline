
//Grab
if other.state == states.handstandjump && other.character != "S"
{
    instance_create(x + (obj_player1.xscale * 40), y, obj_punchdust)
    with other.id
    {
        image_index = 0;
        sprite_index = spr_haulingstart;
        baddiegrabbedID = other.id;
        state = states.grab;
    }
    playerid = other.object_index;
    grabbed = 1;
}

// enter barrel
if (other.state == states.mach2 or other.state == states.mach3 or other.state == states.machroll) && grounded && other.character != "V"
{
    instance_create(x, y, obj_genericpoofeffect);
    with other.id
    {
        vsp = 0;
        mask_index = spr_crouchmask;
        x = other.x;
        y = other.y;
        state = states.barrel;
		sprite_index = spr_barrelroll;
        movespeed = 12;
    }
    instance_destroy();
}

/*
// Bump
if thrown == false && stuntouchbuffer <= 0 && vsp > 0 && (other.character == "S" or other.character == "V")
{
	if other.state == states.mach2
	{
		grounded = false;
		
		scr_soundeffect(sfx_bumpwall);
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
		stuntouchbuffer = 50;
		
		if other.x != x
			image_xscale = -sign(x - other.x)
	
		machhitAnim = true;
		
		vsp = -5;
		hsp = other.movespeed * other.xscale;
	}
	thrown = true;
}
*/