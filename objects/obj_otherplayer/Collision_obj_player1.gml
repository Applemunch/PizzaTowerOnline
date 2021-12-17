if global.pvp && pvp && pvp_cooldown <= 0 && !pause
{
	with other
	{
		if state == states.handstandjump && other.hurted = false && other.state != states.hurt && other.state != states.knightpepslopes && other.state != states.knightpep && other.state != states.tumble
		&& other.state != states.fireass && other.state != states.bombpep && other.cutscene = false && other.hurted = false && hurted = false && !(other.state = states.handstandjump or other.state = states.punch)
		&& other.state != states.grabbed
		{
			movespeed = 0
			image_index = 0
			sprite_index = spr_haulingstart
			
			baddiegrabbedID = obj_otherplayer
			
			state = states.grab
			
			gms_p2p_send(p2p.pvp_grab, other.player_id);
			other.pvp_cooldown = 10;
		}
		
		if state == states.freefall && other.hurted = false && other.state != states.stunned && other.state != states.hurt && hurted = false
		{
			gms_p2p_send(p2p.pvp_squish, other.player_id);
			other.pvp_cooldown = 10;
		}

		if state == states.punch && hurted = false && other.hurted = false && !(other.state = states.handstandjump or other.state = states.punch)
		{
			gms_p2p_send(p2p.pvp_punch, other.player_id);
			other.pvp_cooldown = 10;
		}
	}
}