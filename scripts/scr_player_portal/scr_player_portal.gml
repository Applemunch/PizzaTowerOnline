function scr_player_portal()
{
	if floor(image_index) >= image_number - 1 && sprite_index == spr_pizzaportalentrancestart
	{
		instance_create(x, y, obj_pizzaportalfade)
		state = states.jump
		sprite_index = spr_fall
		grav = basegrav
	}
	mach2 = 0
}
