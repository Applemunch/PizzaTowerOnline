if cooldown = 0 && !instance_exists(ID)
{
	with instance_create(x,y,obj_canongoblinbomb)
	{
		other.ID = id
		image_xscale = other.image_xscale
	}
	cooldown = 100
	sprite_index = spr_canonbot_shoot
	image_index = 0
}

if cooldown > 0
	cooldown--;
if floor(image_index) == image_number - 1 && sprite_index == spr_canonbot_shoot
	sprite_index = spr_canonbot