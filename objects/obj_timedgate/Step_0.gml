if instance_exists(mysolid)
	mysolid.visible = false;
else
	event_user(0);

if global.timedgatetime > 0
{
	x = -10000
	y = -10000
	
	mysolid.x = -10000;
	mysolid.y = -10000;
}
else if mysolid.x != mysolid.xstart or mysolid.y != mysolid.ystart
{
	x = xstart;
	y = ystart;
	
	if !place_meeting(x, y, obj_player)
	{
		mysolid.x = mysolid.xstart;
		mysolid.y = mysolid.ystart;
	}
}

if place_meeting(x, y, obj_otherplayer)
	image_alpha = 0.5;
else
	image_alpha = 1;