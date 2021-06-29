if pistol
{
    with instance_create(x, y, obj_sausageman_dead)
	{
	    sprite_index = spr_peppinobullet_dead
	    image_xscale = other.image_xscale
	}
}

if sprite_index == spr_mortprojectile
{
    with instance_create(x, y, obj_sausageman_dead)
	{
	    sprite_index = spr_mortdead
	    image_xscale = other.image_xscale
	}
}

if sprite_index != sprite10391
{
	repeat(6) with instance_create(x+random_range(-25,25), y+random_range(-25,25),obj_balloonpop)
		sprite_index= spr_shotgunimpact
}
else repeat(6) with instance_create(x-(32* image_xscale)+random_range(-25,25), y+random_range(-25,25),obj_balloonpop)
	sprite_index= spr_shotgunimpact