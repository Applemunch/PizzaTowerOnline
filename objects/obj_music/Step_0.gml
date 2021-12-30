if global.musicvolume <= 0
	exit;

// music pitch depending on player state
if !scr_stylecheck(0, 2)
{
	if !global.panic && !global.snickchallenge && !global.miniboss && room != Realtitlescreen
	{
		with obj_player1
		{
			var _state = state;
			if _state == states.hitlag
				_state = tauntstoredstate;
			if _state == states.backbreaker
			{
				with obj_teleporter
				{
					if player.id == other.id && (alarm[0] > -1 or alarm[1] > -1)
						_state = storedstate;
				}
				with obj_warplaser
				{
					if player.id == other.id && (alarm[0] > -1 or alarm[1] > -1)
						_state = storedstate;
				}
			}
			
			switch _state
			{
				case states.knightpep:
					other.musicpitch = 0.9;
					break;
				case states.knightpepslopes:
					other.musicpitch = 1.2;
					break;
				case states.tumble:
					other.musicpitch = 1.2;
					break;
				
				default:
					other.musicpitch = 1;
					break;
			}
		}
	}
	else
		musicpitch = 1;
	
	var pitch = true;
	with obj_startgate
		if drawing pitch = false;
	with obj_player1
		if state == states.frozen pitch = false;
	
	if pitch
		audio_sound_pitch(global.music, lerp(audio_sound_get_pitch(global.music), musicpitch, 0.35));
}

// music to play
var musplay = -1;
	
if global.panic && !(room == custom_lvl_room && global.disableescapemusic)
&& !audio_is_playing(mu_war)
&& ((string_letters(roomname) != "dragonlair" && string_letters(roomname) != "grinch") or scr_checkskin(checkskin.p_anton))
{
	// war level
	if audio_is_playing(mu_warintro)
		musplay = mu_war;
	else
	{
		// antonball
		if scr_checkskin(checkskin.p_anton)
			musplay = mu_antonescape;
		
		// gerome
		else if global.gameplay != 0 && (global.gerome or global.treasure or instance_exists(obj_geromeanim))
			musplay = mu_chase;
		
		// pizza time
		else
		{
			if obj_player1.character == "N"
				musplay = global.gameplay == 0 ? mu_noiseescape_OLD : mu_noiseescape;
			else if obj_player1.character == "S"
				musplay = mu_snickescape;
			else if obj_player1.character == "SP"
				musplay = global.gameplay == 0 ? mu_pizzyescape_OLD : mu_pizzyescape;
			else // peppino, etc
				musplay = mu_pizzatime;
		}
	}
}

// snick challenge
if global.snickchallenge && !obj_pause.pause && !obj_camera.ded
{
	if global.minutes >= 2
		musplay = global.snickrematch ? mu_snickrematch : mu_snickchallenge;
	else
		musplay = global.snickrematch ? mu_snickrematchend : mu_snickchallengeend;
}

// miniboss music
if global.miniboss
	musplay = mu_miniboss;
else if audio_is_playing(mu_miniboss)
	audio_stop_sound(global.music);

// pizza castle
if global.musicgame == 1
	musplay = scr_getmidi(musplay);

// actually play the song
if audio_exists(musplay) && !audio_is_playing(musplay)
&& !obj_pause.pause && !obj_camera.ded
{
	audio_stop_sound(global.music);
	scr_sound(musplay);
}

// last music position
if audio_is_playing(global.music)
	fadeoff = audio_sound_get_track_position(global.music);
else
	fadeoff = 0;

pausedmusic = global.music;

// pln slowdown
if room == hub_roomPLN && audio_is_playing(global.music)
	audio_sound_pitch(global.music, 0.5);
