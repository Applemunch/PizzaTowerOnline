followqueue = [];

lerpx = undefined;
lerpy = undefined;

var target = obj_player;
if instance_exists(target)
{
	xscale = target.xscale;
	
	if off_on_y
		xoffset = 0;
	else
		xoffset = -xscale * xoffsetmax;
	
	x = target.x + xoffset * pos;
	y = target.y;
}
