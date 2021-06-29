var leader = obj_player1;
	
var target = leader;
if instance_exists(followid)
	target = followid;
	
//Follow Player
ds_queue_enqueue(followqueue, target.x);
ds_queue_enqueue(followqueue, target.y);
	
xscale = leader.xscale
if ds_queue_size(followqueue) > LAG_STEPS
{
	if leader.state != states.ladder && leader.state != states.climbwall && leader.state != states.cheesepepstickside && leader.state != states.comingoutdoor
	//&& (!scr_solidwall(target.x + ((xoffsetmax * 2) * -xscale), y) or place_meeting(x, y + 1, obj_slope))
		xoffset = clamp(xoffset - (xscale * 4), -xoffsetmax, xoffsetmax);
	else
		xoffset = max(abs(xoffset) - 4, 0) * sign(xoffset);
	
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

image_blend = leader.image_blend;
image_alpha = leader.image_alpha;
if object_index != obj_geromefollow or !instance_exists(obj_geromeanim)
	visible = leader.visible;