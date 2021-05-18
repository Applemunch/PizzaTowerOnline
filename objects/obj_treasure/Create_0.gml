image_speed = 0.35
sprgot = spr_treasure1pick
spridle = spr_treasure1
spr = 1

if obj_player1.character == "S"
{
	if global.gameplay == 0
		instance_destroy()
	else
	{
		instance_change(obj_snicklevelend, true);
		x -= sprite_xoffset;
		y -= sprite_yoffset;
		
		x += 50 + 16;
		y += 50 - 12;
	}
}

player = 0