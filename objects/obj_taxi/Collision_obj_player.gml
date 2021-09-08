with other
{
	if key_up && grounded && (state == states.normal or state == states.mach1 or state == states.mach2 or state == states.pogo or state == states.mach3 or state == states.Sjumpprep)
	&& !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.taxi
	{
		instance_create(x, y, obj_genericpoofeffect)
		visible = false
		sprite_index = spr_idle
		hsp = 0
		vsp = 0
		state = states.taxi
		cutscene = true
		
		with other
		{
			scr_soundeffect(sfx_taxi2)
			playerid = other.id
			sprite_index = spr_taximove	
			hsp = 10
		}
	}
}