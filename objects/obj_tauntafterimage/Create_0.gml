image_speed = 0.5


image_xscale = obj_player1.xscale
sprite_index = spr_supercharge

if obj_player1.character == "S"
{
	image_speed = 0;
	sprite_index = obj_player1.sprite_index;
	image_index = obj_player1.image_index;
}

randomize()

if obj_player1.character == "S"
	image_blend = choose(make_colour_rgb(96, 208, 72), make_colour_rgb(248, 0, 0))


alarm[1] =3
