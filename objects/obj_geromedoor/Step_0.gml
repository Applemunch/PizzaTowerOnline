if (obj_player1.state = states.normal or obj_player1.state = states.mach1 or obj_player1.state == states.pogo or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.Sjumpprep) && obj_player1.key_up && obj_player1.grounded && place_meeting(x,y,obj_player1) && global.gerome
{
	with obj_camera
	{
		alarm[1] = -1;
		alarm[3] = -1;
	}
		
	with obj_player1
	{
		state = states.victory
		doorx = other.x + 50
		keydoor = true
		
		image_index = 0
		targetRoom = other.targetRoom;
		targetDoor = other.targetDoor;
	}
		
	obj_geromefollow.visible = false;
	with instance_create(obj_player1.x - 30, obj_player1.y, obj_geromeanim)
	{
		sprite_index = spr_gerome_opendoor;
		image_index = 0;
		image_speed = 0.35;
	}
	
	image_index = 1;
	global.gerome = false;
}

if floor(obj_player1.image_index) = obj_player1.image_number - 1 && obj_player1.state = states.victory && place_meeting(x, y, obj_player1)
{
	with obj_player1
	{
		obj_player1.targetDoor = other.targetDoor
		obj_player1.targetRoom = other.targetRoom
		
		if !instance_exists(obj_fadeout)
		{
			scr_soundeffect(sfx_door)
			instance_create(x,y,obj_fadeout)
		}
	}
}


if place_meeting(x,y,obj_doorA)
targetDoor = "A"
if place_meeting(x,y,obj_doorB)
targetDoor = "B"
if place_meeting(x,y,obj_doorC)
targetDoor = "C"
if place_meeting(x,y,obj_doorD)
targetDoor = "D"
if place_meeting(x,y,obj_doorE)
targetDoor = "E"


