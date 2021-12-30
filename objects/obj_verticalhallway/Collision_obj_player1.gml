with other
{
	/*
	if state != states.climbwall && state != states.ladder
		x = other.x + (other.sprite_width / 2);
	*/
	y = min(y, other.y + (other.sprite_height - 46));
	
	if !instance_exists(obj_fadeout) && !instance_exists(obj_pausefadeout) && !obj_pause.pause
	{
		targetDoor = other.targetDoor
	    targetRoom = other.targetRoom
		
		verticalhallway = true
		vhallwaydirection = other.image_yscale;
			
		if other.targetRoom == room
		{
			vhallwaydirection *= -1;
			vsp *= -1;
			
			if state == states.Sjump
				state = states.normal;
		}
		
		other.visited = true
		
		scr_soundeffect(sfx_door)
		instance_create(x,y,obj_fadeout)
	}
	if instance_exists(obj_pausefadeout)
	{
		x = xprevious;
		y = yprevious;
	}
}