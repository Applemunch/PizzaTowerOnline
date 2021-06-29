if place_meeting(x, y, obj_player1) && obj_player1.key_up2 && obj_player1.state == states.normal && !instance_exists(obj_baddiechoice)
{
	/*
	scr_soundeffect(sfx_step);
	showbaddie = true;
	
	instance_destroy(baddieid, false);
	instance_destroy(obj_treasureguybox);
	
	refresh = 100
	baddiesel++;
	if baddiesel >= array_length_1d(baddiemenu)
		baddiesel = 0;
	content = baddiemenu[baddiesel];
	*/
	
	with instance_create(0, 0, obj_baddiechoice)
	{
		baddiemenu = other.id;
		for(var i = 0; i < array_length(selarray); i++)
		{
			if other.content == selarray[i][0]
			{
				sel[0] = i;
				event_user(0);
				break;
			}
		}
	}
}

if content == noone
	exit;

if !instance_exists(baddieid)
	refresh--;

if refresh <= 0 && content != noone
{
	showbaddie = false;
	image_speed = 0.35
	if floor(image_index) == 5
	{
		with instance_create(x, y - 20, content)
		{
			image_xscale = other.image_xscale;
			state = states.stun
			stunned = 50
			vsp = -5
			other.baddieid = id
			important = true
		}
		
		refresh = 100
	}
}