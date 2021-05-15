function create_collect(x, y, sprite)
{
	if global.gameplay == 0
		exit;
	
	with instance_create(x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]), obj_collectparticle)
		sprite_index = sprite;
}

function create_baddiegibsticks(x, y) {
	if global.gameplay == 0
		exit;
	
	instance_create(x, y, obj_baddiegibsstick);
}

function create_particle(x, y, par)
{
	enum particles
	{
		baddiegibs,
	}
	
	switch par
	{
		case particles.baddiegibs:
			with instance_create(x, y, obj_baddiegibs)
			{
				var bad = other.object_index;
				if bad == obj_baddiecollisionbox && instance_exists(baddieID)
					bad = bad.baddieID.object_index;
				
				if bad == obj_gumslime or bad == obj_burgknight
				{
					sprite_index = spr_baddiegibs_ss;
					image_index = irandom_range(0, image_number - 1);
					angspd = random(2);
					hsp = random_range(-10, 10);
				}
			}
			break;
	}
}