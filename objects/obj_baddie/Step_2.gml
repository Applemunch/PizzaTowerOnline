/// @description
if global.gameplay == 0 && hp > 1
	hp = 1;

if thrown && state != states.hit
{
	with obj_destructibles
	{
		if place_meeting(x - other.hsp, y, other)
			instance_destroy();
	}
	if abs(hsp) < 24 && grav == 0
		grav = 0.35;
}
if state != states.grabbed
{
	clipin = 60;
	scr_collide();
}
else
	scr_enemy_grabbed();

// heat meter image speed and cloud effects
if global.gameplay != 0
{
	if state == states.walk
		image_speed = 0.35 + (global.baddiespeed * 0.05);
	if sprite_index == walkspr && hsp != 0 && floor(image_index) >= image_number - 1 && image_number > 1
		instance_create(x - image_xscale * 20, y + 43, obj_cloudeffect);
}

// inside a block
var sold = instance_place(x, y, obj_solid);
if sold && !inst_relation(sold, obj_slope)
{
	if state != states.grabbed && state != states.hit
	&& !inst_isobj(sold, obj_enemyblock)
	&& (!inst_relation(sold, obj_destructibles)
	or (inst_isobj(sold, obj_onwaybigblock) && sign(sold.image_xscale) == -sign(image_xscale)))
		instance_destroy();
}
