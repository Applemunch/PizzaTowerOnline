function scr_player_taunt()
{
	with obj_player
	{
		if (!instance_exists(obj_fadeout) or obj_fadeout.fadein)
		&& state != states.backbreaker
		{
			grav = basegrav;
			
			taunttimer = 20
			tauntstoredmovespeed = movespeed
			tauntstoredsprite = sprite_index
			tauntstoredstate = state
			state = states.backbreaker
			
			if supercharged
			{
				if !audio_is_playing(sfx_supertaunt)
					scr_soundeffect(sfx_supertaunt)
				else
					scr_soundeffect(sfx_taunt)
			}
			else
				scr_soundeffect(sfx_taunt)
			
			if supercharged && character != "S" && character != "V" && character != "G"
			{
				image_index = 0
				sprite_index = choose(spr_supertaunt1,spr_supertaunt2,spr_supertaunt3,spr_supertaunt4)
			}
			else
			{
				taunttimer = 20
				image_index = irandom(sprite_get_number(spr_taunt))
				sprite_index = spr_taunt
				image_speed = 0
			}
			with instance_create(x, y, obj_taunteffect)
				player = other.id;
		}
	}
}