if other.drop = false
{
	audio_stop_sound(mu_chase);
	
	instance_destroy(obj_peppermandestroyable)
	instance_create(x,y,obj_key)
	dead = true
	sprite_index = spr_pepperman_hurt
	hsp = spd
	other.drop = true
}
