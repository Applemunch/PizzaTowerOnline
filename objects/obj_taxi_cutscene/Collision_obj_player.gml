if other.state != states.taxi
{
	with other
	{
		visible = false;
		sprite_index = spr_idle;
		hsp = 0;
		vsp = 0;
		state = states.taxi;
		cutscene = true;
	}
	
	scr_soundeffect(sfx_taxi2);
	playerid = other;
	sprite_index = spr_taximove;
	hsp = 10;

	if !pickedup
	    instance_create(x, y, obj_genericpoofeffect)
	pickedup = true;
}