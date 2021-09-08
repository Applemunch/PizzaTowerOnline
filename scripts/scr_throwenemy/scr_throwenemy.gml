function scr_throwenemy(bad = other.baddieID)
{
	if instance_exists(bad)
	{
		scr_failmod(mods.pacifist);
		with bad
		{
			hp -= 1
			
			repeat 3
			{
				instance_create(x, y, obj_slapstar)
				create_particle(x, y, particles.baddiegibs);
			}
			with (obj_camera)
			{
				shake_mag=3;
				shake_mag_acc=3/room_speed;
			}
			
			alarm[3] = 3
			global.hit += 1
			if object_index == obj_pizzaballOLD
				global.golfhit += 1
			
			increase_combo();
			
			alarm[1] = 5
			stunned = 1000
			thrown = true
			state = states.stun
		}
	}
}