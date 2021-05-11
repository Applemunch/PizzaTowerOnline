visible = !playerid.mort;
if room == rank_room
	visible = false;

image_speed = 0.35;
if obj_player1.hsp != 0
	sprite_index = spr_mortwalk;
else
	sprite_index = spr_mortidle;
depth = -6;

if !global.mort
	instance_destroy();