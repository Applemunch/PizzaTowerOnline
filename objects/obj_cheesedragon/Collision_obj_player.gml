if other.character == "S" && other.state == states.mach3 && sprite_index != spr_cheesedragon_hurt
	event_user(0);
else
{
	with other
	{
		if state == states.rideweenie
			with instance_create(x,y,obj_sausageman_dead)
				sprite_index = spr_weeniemount_dead
		scr_knightbump(true, false);
		
		hsp = -6
		state = states.bump
		xscale = 1
		sprite_index =spr_bump
		vsp = -4
	}
}