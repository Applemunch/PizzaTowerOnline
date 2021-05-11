var leader = obj_player1;
	
var target = leader;
if instance_exists(followid)
	target = followid;
	
//Follow Player
ds_queue_enqueue(followqueue, target.x);
ds_queue_enqueue(followqueue, target.y);
	
xscale = leader.xscale
if leader.state != states.ladder && leader.state != states.climbwall && leader.state != states.cheesepepstickside
//&& (!scr_solidwall(target.x + ((xoffsetmax * 2) * -xscale), y) or place_meeting(x, y + 1, obj_slope))
	xoffset = clamp(xoffset - (xscale * 4), -xoffsetmax, xoffsetmax);
else
	xoffset = max(abs(xoffset) - 4, 0) * sign(xoffset);

if ds_queue_size(followqueue) > LAG_STEPS
{
	var xx = ds_queue_dequeue(followqueue);
	var yy = ds_queue_dequeue(followqueue);
	
	y = yy;
	x = xx + xoffset;
}

/*
yslope = 0;
if place_meeting(x, y + yslope, obj_slope)
{
	var slope = instance_place(x, y + yslope, obj_slope);
	while place_meeting(x, y + yslope, slope)
		yslope -= sign(slope.image_yscale);
}
if place_meeting(x, y + 32, obj_slope) && !place_meeting(x, y + yslope + 1, obj_slope)
{
	while !place_meeting(x, y + yslope + 1, obj_slope)
		yslope += 1;
}
*/

image_alpha = leader.image_alpha;
visible = leader.visible;