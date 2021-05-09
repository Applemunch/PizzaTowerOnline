with (other)
{

if !other.old
	x = other.x
y = other.y + (other.sprite_height - 46) 
	
if ((obj_player1.spotlight = true && object_index = obj_player1) or (obj_player1.spotlight = false && object_index = obj_player2))
	{
if !instance_exists(obj_fadeout)
{
		obj_player1.targetDoor = other.targetDoor
       obj_player1.targetRoom = other.targetRoom
		
		if !other.old
		{
			obj_player1.hallway = true
			obj_player1.hallwaydirection = other.image_xscale;
			
			if other.targetRoom == room
				obj_player1.hallwaydirection *= -1;
		}
		else
		{
			obj_player1.oldhallway = true
			obj_player1.target_x = other.target_x
			obj_player1.target_y = other.target_y
		}
		
		/*
		if instance_exists(obj_player2)  
		{

				obj_player2.targetDoor = other.targetDoor
       obj_player2.targetRoom = other.targetRoom
		obj_player2.hallway = true
		obj_player2.hallwaydirection = other.image_xscale
		}
		*/
other.visited = true


if state = states.machslide
state = states.normal

scr_soundeffect(sfx_door)

instance_create(x,y,obj_fadeout)

}
	}
	else if object_index= obj_player2 && state != states.grabbed
	{
	alarm[5] = 2
alarm[7] = 60
hurted = true
x = obj_player1.x
y = obj_player1.y
state = states.normal
	}
		else if object_index= obj_player1 && state != states.grabbed
	{
	alarm[5] = 2
alarm[7] = 60
hurted = true
x = obj_player2.x
y = obj_player2.y
state = states.normal
	}
}