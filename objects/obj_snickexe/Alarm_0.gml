repeat(6) with instance_create(x+random_range(-100,100), y+random_range(-100,100),obj_balloonpop)
	sprite_index= spr_shotgunimpact

x = room_width/2
y = -100
knocked = false
hspeed = 0
vspeed = 0
image_angle = 0

if global.snickrematch
{
	deactivate = true;
	hitboxcreate = false;
	
	alarm[1] = room_speed * 5;
}
else
{
	enemybird = true;
	alarm[2] = room_speed * 5;
}