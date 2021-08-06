if faceplayer
{
	if x != obj_player1.x
	&& obj_player1.y <= y + 100 && obj_player1.y >= y - 150
		image_xscale = -sign(x - obj_player1.x);
	else
		image_xscale = xdef;
}

if place_meeting(x, y, obj_player1)
{
	if obj_player1.key_up2 && obj_player1.state == states.normal && !instance_exists(obj_dialoguebox)
	{
		mybox = instance_create(0, 0, obj_dialoguebox);
		with mybox
		{
			dialogue = other.dialogue;
			face = other.face;
			instant = other.instant;
		}
	}
	
	/*
	if obj_player1.key_up2
		con += 1;
	
	if con != conprev
	{
		rand = -1;
		if con < array_length(dialogue)
		{
			var d = dialogue[con];
			
			msg = d;
			if is_array(d)
				msg = d[irandom_range(0, array_length(d) - 1)];
		}
		else
		{
			con = -1;
			if is_method(donefunc)
				donefunc();
		}
		
		conprev = con;
	}
	tmr = room_speed * 3;
	*/
}
/*else if tmr > 0
{
	tmr--;
	if tmr <= 0
	{
		con = -1;
		conprev = -1;
	}
}
*/

if talkspr != -1
{
	if instance_exists(mybox) && mybox.con == 1 && mybox.writer < string_length(mybox.dialogue[mybox.curdiag]) && mybox.alarm[0] < 2
	{
		if talkspr == basespr
		{
			image_speed = 0;
			image_index = 1;
		}
		sprite_index = talkspr;
	}
	else
	{
		if talkspr == basespr
		{
			image_speed = 0;
			image_index = 0;
		}
		sprite_index = basespr;
	}
}
if is_method(donefunc)
{
	if mybox != noone && !instance_exists(mybox)
	{
		mybox = noone;
		donefunc();
	}
}

if is_method(func)
	func();