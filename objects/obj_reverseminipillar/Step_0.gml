if instance_exists(obj_endlevelfade)
	exit;

if (!global.panic or global.gerome) && (!global.treasure or global.gameplay == 0)
{
	x = xstart
	y = ystart
	mask_index = spr_minipillarwoke
	if !instance_exists(obj_snicklevelend) or !obj_snicklevelend.visible
		sprite_index = spr_minipillarwoke
	
	if place_meeting(x, y, obj_otherplayer)
		image_alpha = 0.5;
	else
		image_alpha = 1;
}
else
{
	x = -10000
	y = -10000
	sprite_index = spr_minipillarsleep
	image_alpha = 1;
}