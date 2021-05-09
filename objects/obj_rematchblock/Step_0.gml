if instance_exists(obj_endlevelfade)
	exit;

if room == rm_editor {
	mask_index = spr_minipillarwoke;
	exit;
}

if !(global.snickrematch && global.snickchallenge)
{
	x = -100
	y = -100
	image_alpha = 1;
	sprite_index = spr_rematchblocksleep
}
else
{
	mask_index = spr_minipillarwoke
	sprite_index = spr_rematchblockwoke
	x = xstart
	y = ystart
	
	if place_meeting(x, y, obj_otherplayer)
		image_alpha = 0.5;
	else
		image_alpha = 1;
}