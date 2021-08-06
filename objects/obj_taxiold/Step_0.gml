x += hsp

if obj_player1.state == states.taxi && sprite_index == spr_taximove && instance_exists(obj_gms) && gms_info_isloggedin()
{
	gms_self_set("taxix", x);
	gms_self_set("taxiy", y);
}


if hsp != 0
{
	dust += 1
	if dust >= 40
	{
		dust = 0
		instance_create(x,y+43,obj_cloudeffect)
	}
}