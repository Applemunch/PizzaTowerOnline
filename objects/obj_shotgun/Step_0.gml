scr_collide()

if obj_player1.character == "N"
{
	if sprite_index == spr_shotgun && grounded
		y -= 10;
	sprite_index = spr_minigun;
}
else
	sprite_index = spr_shotgun;