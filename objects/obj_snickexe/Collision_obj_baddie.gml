if other.thrown = true
{
	repeat(6) with instance_create(x+random_range(-100,100), y+random_range(-100,100),obj_balloonpop)
sprite_index= spr_shotgunimpact
	x = room_width/2
y = -10

	if global.snickrematch
	{
		deactivate = true;
		alarm[1] = room_speed * 5;
	}
}