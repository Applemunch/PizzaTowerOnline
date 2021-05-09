mask_index = spr_player_mask;

if x != obj_player1.x
&& obj_player1.y <= y + 64 && obj_player1.y >= y - 100
	image_xscale = -sign(x - obj_player1.x);
else
	image_xscale = xdef;

if place_meeting(x, y, obj_player1)
{
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
}
else if tmr > 0
{
	tmr--;
	if tmr <= 0
	{
		con = -1;
		conprev = -1;
	}
}

if is_method(func)
	func();