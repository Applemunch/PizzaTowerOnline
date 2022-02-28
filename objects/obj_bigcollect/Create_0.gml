with obj_player1
{
	if character == "N"
		other.sprite_index = choose(spr_pizzacollect1halloween, spr_pizzacollect2halloween, spr_pizzacollect3halloween);
	else if character == "SP"
		other.sprite_index = choose(spr_pizzacollect1_ss, spr_pizzacollect2_ss, spr_pizzacollect3_ss);
	else if character == "S"
		other.sprite_index = spr_snickcollectible2;
	else
	{
		if global.gameplay == 0
			other.sprite_index = choose(spr_pizzacollect1, spr_pizzacollect2, spr_pizzacollect3);
		else
			other.sprite_index = choose(spr_bigcollect1, spr_bigcollect2, spr_bigcollect3, spr_bigcollect4, spr_bigcollect5);
	}
}

if string_startswith(room_get_name(room), "strongcold")
	sprite_index = choose(spr_xmasbigpizza1, spr_xmasbigpizza2);
if global.snickrematch
	sprite_index = choose(spr_pizzacollect1_re, spr_pizzacollect2_re, spr_pizzacollect3_re);

image_speed = 0.35;
depth = 104;
owner = id;
