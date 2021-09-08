if room == rm_editor exit;

if firesnd != -1 && !audio_is_playing(firesnd)
	firesnd = -1;

if obj_player1.character == "V" && place_meeting(x,y-1,obj_player1)
	scr_hurtplayer(obj_player1)
else
{
	//Burn player
	if (place_meeting(x,y-1,obj_player1)) && obj_player1.state != states.boots && obj_player1.state != states.gameover && obj_player1.state != states.rideweenie
	{
		obj_player1.image_blend = c_white
		obj_player1.state = states.fireass
		obj_player1.image_index = 0
		obj_player1.vsp = -25
		obj_player1.sprite_index = obj_player1.spr_fireass
		
		if !audio_is_playing(obj_player1.snd_fireass) or audio_sound_get_track_position(firesnd) >= 0.5
		{
			audio_stop_sound(obj_player1.snd_fireass);
			firesnd = scr_soundeffect(obj_player1.snd_fireass);
		}
		
		tv_push_prompt_once(tv_create_prompt("This is the fireass transformation text", 2, spr_tv_fireass, 3), "fireass");
	}
}