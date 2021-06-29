with instance_place(x, y - 1, obj_player1)
{
	if state != states.gameover && state != states.mach3 && sprite_index != spr_mach3boost
    {
		if character != "V"
		{
			scr_knightbump(true, false);
			
			image_blend = c_white
	        image_index = 0
	        state = states.fireass
	        vsp = -21
	        instance_create(x, y + 20, obj_piranneapplewater)
			if character == "P" or character == "N"
				sprite_index = spr_scaredjump1
			else
				sprite_index = spr_fireass
	        with instance_create(x, y, obj_superdashcloud)
	            sprite_index = spr_watereffect
			
			if !audio_is_playing(obj_player1.snd_fireass)
				scr_soundeffect(obj_player1.snd_fireass)
		}
		else
		{
			if state == states.tumble
				state = states.normal;
			scr_hurtplayer(id);
		}
    }
}
with instance_place(x, y - 1, obj_baddie)
{
	if object_index != obj_pizzaballOLD
		instance_destroy();
	else
		event_perform(ev_collision, obj_boilingsauce);
}