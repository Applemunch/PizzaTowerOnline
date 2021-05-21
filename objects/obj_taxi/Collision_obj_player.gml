with other
{
	if key_up && grounded && (state = states.normal or state = states.mach1 or state = states.mach2 or state == states.pogo or state = states.mach3 or state = states.Sjumpprep) 
	&& !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.taxi
	{
		with other
		{
			obj_player1.visible = false
			obj_player1.sprite_index = obj_player1.spr_idle
			obj_player1.hsp = 0
			obj_player1.vsp = 0
			obj_player1.state = states.taxi
				scr_soundeffect(sfx_taxi2)
			playerid = 	obj_player1
			sprite_index = spr_taximove	
			hsp = 10
			obj_player1.cutscene = true
		}
	}
}