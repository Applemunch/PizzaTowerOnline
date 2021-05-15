image_speed = 0.35;
sprite_index = choose(spr_gerome_idle1, spr_gerome_idle2, spr_gerome_idle3);

with obj_player1
	if character == "S" instance_destroy(other.id);