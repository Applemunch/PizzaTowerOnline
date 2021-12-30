if state == states.hang
	state = states.normal;

if place_meeting(x, y, obj_boxofpizza) or place_meeting(x, y - 1, obj_boxofpizza)
{
    box = true;
    hallway = false;
    state = states.crouch;
}

if !oldhallway
{
	var doortarget = noone;
	if targetDoor == "A"
		doortarget = obj_doorA;
	else if targetDoor == "B"
		doortarget = obj_doorB;
	else if targetDoor == "C"
		doortarget = obj_doorC;
	else if targetDoor == "D"
		doortarget = obj_doorD;
	else if targetDoor == "E"
		doortarget = obj_doorE;
	
	if !instance_exists(doortarget) && instance_exists(obj_doorANY)
	{
		with obj_doorANY
			if door == other.targetDoor doortarget = id;
	}
	
	if doortarget != -1 && instance_exists(doortarget)
	{
		if hallway
			x = doortarget.x + (hallwaydirection * 100);
		else if box
			x = doortarget.x + 32;
		else
			x = doortarget.x + 16;
		
		y = doortarget.y - 14;
		
		if targetDoor == "A" && place_meeting(x, y, obj_exitgate)
			x -= 16;
	}
	
	if verticalhallway
		y += vhallwaydirection * 50;
	
	if targetDoor = "CH" && instance_exists(obj_checkpoint)
	{
		x = obj_checkpoint.x;
		y = obj_checkpoint.y - 46;
	}
		
	if is_real(targetDoor)
	{
		if !audio_is_playing(global.music)
		{
			with obj_music
				wait = true;
		}
		
		with obj_teleporter
		{
			if trigger = other.targetDoor && start = 0 
			{
				player.x = x
				player.y = y - 14
				alarm[1] = 15;
			}
		}
	}
}
else
{
	x = target_x
	y = target_y
}
if state == states.climbwall
{
	var xx = x;
	while !scr_solid(x + xscale, y)
	{
		x += xscale;
		if abs(x) > room_width
		{
			x = xx;
			break;
		}
	}
}

if state == states.ladder
	doorx = x;

if box
	grounded = false;

hallway = false
verticalhallway = false
box = false
oldhallway = false

roomstartx = x
roomstarty = y
hitX = x
hitY = y

if baddiegrabbedID != 0 && baddiegrabbedID != obj_null && baddiegrabbedID != obj_otherplayer
{
	with baddiegrabbedID
		persistent = false;
	with obj_baddiecollisionbox
		if baddieID == other.baddiegrabbedID
			persistent = false;
}