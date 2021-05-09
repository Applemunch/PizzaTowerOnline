with (other)
{
	if key_up && place_meeting(x,y,other) && (ladderbuffer = 0) && (state == states.normal or state == states.pogo or state == states.mach2 or state == states.mach3 or state == states.mach1 or state == states.shotgunjump or state == states.jump or state == states.highjump) && state != states.hurt && state != states.machslide && state != states.freefall && state != states.freefallland
	{
		other.hooked = true
		other.playerid = id
		mach2 = 0
		state = states.ladder
		doorx = other.x + 16;
		y = floor(y)
		if y % 2 == 1
			y -= 1
	}
}