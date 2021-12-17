//if character = "V"
//	scr_hurtplayer(object_index)
if scr_transformationcheck()
{
	/*
	if cutscene = false && other.grounded = true && state != states.bombpep && state != states.parry && state != states.backbreaker && (state == states.handstandjump or state == states.punch or character = "S")
	{
		//scr_soundeffect(sfx_oh, sfx_ohman,sfx_hurt1,sfx_hurt2,sfx_hurt3, sfx_mammamia)
		bombpeptimer = 100
		state = states.bombpep
		image_index= 0
		sprite_index = spr_bombpepintro
		instance_destroy(other)
	}
	else
	*/
	
	if (!hurted /*&& other.grounded = false*/ && state != states.parry && state != states.backbreaker)
		instance_destroy(other)
}
