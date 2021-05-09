if place_meeting(x,y-1,obj_player1)
{
	with (obj_player1)
	{
		if place_meeting(x,y+1,obj_ladder) && !place_meeting(x, y + 1, obj_solid) && key_down && (state = states.crouch or (character = "S" && (state = states.normal or state = states.mach1))) && place_meeting(x,y+1,obj_platform)
		{
			state = states.ladder
			y = floor(y + 5)
			if y % 2 == 1
				y -= 1
			
			doorx = other.x + 16;
		}
	}
}

/*

if instance_exists(obj_player2)
if place_meeting(x,y-1,obj_player2)
{
with (obj_player2)
{

if place_meeting(x,y+1,obj_ladder) && key_down && (state = states.crouch or (character = "S" && (state = states.normal or state = states.mach1))) && place_meeting(x,y+1,obj_platform)
{
y += 5
state = states.ladder
x = other.x + (+16)
y = floor(y)
if y % 2 == 1
y -= 1
}
}



}