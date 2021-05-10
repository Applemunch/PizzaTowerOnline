function scr_player_frozen()
{
	image_speed = 0.35;
	
	movespeed += 0.01;
	if room == dungeon_9 or room == dungeon_10 or room == snick_challengeend
		movespeed += 0.02;
	
	if movespeed >= 1
	{
		movespeed = 0;
		state = states.normal;
		
		scr_hurtplayer(id);
		scr_soundeffect(sfx_pephurt);
		
		repeat 10
			scr_soundeffect(sfx_scream1, sfx_scream2, sfx_scream3, sfx_scream4, sfx_scream5, sfx_scream6, sfx_scream7, sfx_scream8, sfx_scream9, sfx_scream10);
		with obj_tv
	    {
	        jumpscare = room_speed / 2
	        jumpscaretext = irandom(sprite_get_number(spr_scares_txt) - 1);
	    }
		
		image_blend = c_white;
		exit;
	}
	
	if -key_left2 or key_right2 or key_up2 or key_down2 or key_jump or key_slap
	{
		shake = 8;
		hitLag -= 5;
		movespeed = max(movespeed - 0.04, 0);
		
		if hitLag <= 0
		{
			image_blend = c_white;
		
			scr_soundeffect(sfx_punch);
			scr_soundeffect(sfx_breakblock2);
		
		    movespeed = tauntstoredmovespeed;
		    sprite_index = tauntstoredsprite;
			
		    state = states.jump;
			jumpstop = true;
			vsp = -12;
			sprite_index = spr_machfreefall;
			
			exit;
		}
	}
	
	audio_sound_pitch(global.music, lerp(1, 0.25, movespeed));
	image_blend = merge_colour(c_white, c_purple, movespeed);
}