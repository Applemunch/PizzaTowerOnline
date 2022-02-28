var leader = obj_player, target = leader;

// who to follow
if instance_exists(followid)
	target = followid;
if !instance_exists(target)
	exit; // do nothing

// enqueue whoever i'm following
array_push(followqueue, target.x);
array_push(followqueue, target.y);

// stand behind target
xscale = leader.xscale;
if xoffsetmax > 0
{
	off_on_y = leader.state == states.ladder or leader.state == states.climbwall or leader.state == states.cheesepepstickside or leader.state == states.comingoutdoor or leader.state == states.door or leader.state == states.Sjump or leader.state == states.Sjumpland or leader.sprite_index == leader.spr_lookdoor or leader.sprite_index == leader.spr_entergate;
	if !off_on_y
		xoffset = Approach(xoffset, xoffsetmax * -xscale, 4);
	else // stand below target
		xoffset = Approach(xoffset, 0, 4);
}
else
	xoffset = 0;

// follow them!!!
var xx = x, yy = y;
if array_length(followqueue) > LAG_STEPS // lag steps are 20
{
	xx = followqueue[0];
	yy = followqueue[1];
	array_delete(followqueue, 0, 2);
}
else if array_length(followqueue) >= 2
{
	if is_undefined(lerpx) or is_undefined(lerpy)
	{
		lerpx = x;
		lerpy = y;
	}
	
	var amt = clamp(array_length(followqueue) / LAG_STEPS, 0, 1);
	xx = lerp(lerpx, followqueue[0], amt);
	yy = lerp(lerpy, followqueue[1], amt);
}
y = yy;
x = xx + xoffset;

image_blend = leader.image_blend;
image_alpha = leader.image_alpha;
if object_index != obj_geromefollow or !instance_exists(obj_geromeanim)
	visible = leader.visible;
