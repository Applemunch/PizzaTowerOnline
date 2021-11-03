if room == rm_editor exit;

if firesnd != -1 && !audio_is_playing(firesnd)
	firesnd = -1;

var player = instance_place(x, y - 1, obj_player);
if player
{
	if player.character == "V" 
		scr_hurtplayer(player)
	else
	{
		//Burn player
		if player.state != states.boots && player.state != states.gameover && player.state != states.rideweenie
		{
			player.image_blend = c_white
			player.state = states.fireass
			player.image_index = 0
			player.vsp = -25
			player.sprite_index = player.spr_fireass
			
			if !audio_is_playing(player.snd_fireass) or audio_sound_get_track_position(firesnd) >= 0.5
			{
				audio_stop_sound(player.snd_fireass);
				firesnd = scr_soundeffect(player.snd_fireass);
			}
		
			tv_push_prompt_once(tv_create_prompt("This is the fireass transformation text", 2, spr_tv_fireass, 3), "fireass");
		}
	}
}