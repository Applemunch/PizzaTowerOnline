if place_meeting(x, y - 1, obj_player1)
{
	with obj_player1
	{
		if place_meeting(x,y+1,other) && key_down && (state == states.crouch or (character = "S" && (state == states.normal or state == states.mach1))) && place_meeting(x,y+1,obj_platform)
		{
			other.hooked = true
			other.playerid = object_index
			y += 5
			state = states.ladder
			doorx = other.x + 16;
			y = floor(y)
			if y % 2 == 1
				y -= 1
		}
	}
}

if place_meeting(x,y-50,obj_solid)
{
	repeat (3)	with instance_create(x+16,y,obj_debris)
		sprite_index = spr_wooddebris
	instance_destroy()
	instance_create(startx, starty, obj_hookup)
}

if place_meeting(x,y-200,obj_solid) && blinking = 0
{
	blinking = 1
	alarm[0] = 1
}

if hooked
{
	y -= 5
	if playerid.state == states.ladder && place_meeting(x,y,playerid)
	{
		playerid.y -= 5;
		while !place_meeting(x, y, playerid)
			playerid.y++;
	}
	
	if y < -50 && room != custom_lvl_room
	{
		instance_destroy()
		instance_create(startx, starty, obj_hookup)
	}
}