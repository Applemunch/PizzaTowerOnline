if obj_player1.state == states.normal
{
	var prevanton = scr_checkskin(checkskin.p_anton);
	var prev = obj_player1.character;
		
	with obj_player1
	{
		shotgunAnim = false;
		global.gotshotgun = false;
		pogochargeactive = false;
			
		character = other.sel[1];
		scr_characterspr();
		sprite_index = spr_idle;
		scr_changetoppings();
	
		ds_list_copy(palcolors, other.palcolors);
		custompal_update(palcolors);
			
		noisetype = other.noisetype;
	
		if character != prev
		or paletteselect != other.sel[0]
		{
			repeat 6
			{
				with instance_create(x + random_range(-50, 50), y + random_range(-50, 50), obj_cloudeffect)
					depth = other.depth - 1;
			}
				
			if global.gameplay != 0
			{
				with obj_tv
				{
					if sprite_index != spr_tv_open
						sprite_index = idlespr;
				}
			}
		}
		paletteselect = other.sel[0];
	}
		
	if ((scr_checkskin(checkskin.p_anton) && !prevanton))
	or ((!scr_checkskin(checkskin.p_anton) && prevanton))
	{
		// reset song if anton
		with obj_hungrypillar
		{
			audio_stop_sound(song);
			song = -1;
		}
		
		with obj_music
		{
			if global.panic
				audio_stop_sound(global.music);
			fadeoff = 0;
			event_perform(ev_other, ev_room_start);
		}
			
		if scr_checkskin(checkskin.p_antononly)
			scr_soundeffect(sfx_antonball);
		else
			scr_soundeffect(sfx_collecttoppin);
	}
	else
	{
		scr_soundeffect(sfx_collecttoppin);
		scr_characterentrance(sel[1]);
	}
	
	instance_destroy();
}