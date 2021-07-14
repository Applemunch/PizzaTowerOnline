mask_index = spr_eatery_gruntradio;

var vol = max(lerp(global.musicvolume, 0, floor(distance_to_object(obj_player1)) / 150), 0);
audio_sound_gain(global.music, global.musicvolume - vol, 0);
audio_sound_gain(song, vol, 0);

mask_index = spr_eatery_grunt;