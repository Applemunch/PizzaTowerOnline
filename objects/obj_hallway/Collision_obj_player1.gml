with other
{
	if !other.old
		x = other.x
	y = min(y, other.y + (other.sprite_height - 46));
	
	if !instance_exists(obj_fadeout) && !instance_exists(obj_pausefadeout) && (!instance_exists(obj_pause) or !obj_pause.pause) && state != states.hit
	{
		targetDoor = other.targetDoor
	    targetRoom = other.targetRoom
		
		if !other.old
		{
			hallway = true
			hallwaydirection = other.image_xscale;
			
			if other.targetRoom == room && !other.sameroom
			{
				hallwaydirection *= -1;
				xscale *= -1;
			}
		}
		else
		{
			oldhallway = true
			target_x = other.target_x
			target_y = other.target_y
		}
		
		other.visited = true
		if state == states.machslide && scr_stylecheck(0)
			state = states.normal
		
		scr_soundeffect(sfx_door)
		instance_create(x, y, obj_fadeout)
	}
	if instance_exists(obj_pausefadeout)
	{
		x = xprevious;
		y = yprevious;
	}
}