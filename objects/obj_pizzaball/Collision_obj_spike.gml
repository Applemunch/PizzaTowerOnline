if state != states.grabbed
&& other.object_index != obj_enemyblock
&& !object_is_ancestor(other.object_index, obj_destructibles)
{
	instance_create(x, y, obj_balloonpop);
	x = xstart;
	y = ystart;

	grav = 0.5;
	hsp = 0;
	vsp = 0;
	movespeed = 1;
	state = states.walk;
	sprite_index = spr_pizzaball_walk;
	stunned = false;
	alarm[0] = 150;
	roaming = true
	collectdrop = 5
	flying = false
	straightthrow = false
	cigar = false
	cigarcreate = false
	stomped = false
	shot = false
	thrown = false
	reset = false
	hp = 5

	with obj_camera
		targetoverride = obj_null;
	alarm[4] = room_speed / 2;
}