if global.timedgate
{
	x = -10000
	y = -10000
	
	mysolid.x = -10000;
	mysolid.y = -10000;
}
else if x != xstart or y != ystart
{
	x = xstart;
	y = ystart;
	
	if !place_meeting(x, y, obj_player)
	{
		mysolid.x = mysolid.xstart;
		mysolid.y = mysolid.ystart;
	}
}

if instance_exists(mysolid)
	mysolid.visible = false;

if place_meeting(x, y, obj_otherplayer)
	image_alpha = 0.5;
else
	image_alpha = 1;