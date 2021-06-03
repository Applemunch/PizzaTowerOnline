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
			var bad = id;
			if bad == obj_baddiecollisionbox
				bad = bad.baddieID;
			
			if instance_exists(bad) && bad.object_index != obj_robot && bad.object_index != obj_cheeserobot
			{
				with instance_create(x, y, obj_baddiegibs)
				{
					if bad.sugaryenemy
					{
						sprite_index = spr_baddiegibs_ss;
						image_index = irandom_range(0, image_number - 1);
						angspd = random(2);
						hsp = random_range(-10, 10);
					}
				}
			}
			break;
	}
}