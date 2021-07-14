if live_call() return live_result;

writer++;
if writer < string_length(dialogue[curdiag])
{
	var cur_l = string_char_at(dialogue[curdiag], writer);
	
	if cur_l == chr(10)
	or cur_l == " "
	or cur_l == ","
	or cur_l == "."
		exit;
	
	if cur_l == "^"
	{
		var stop = string_char_at(dialogue[curdiag], writer + 1);
		if string_isnumber(stop)
		{
			writer++;
			alarm[0] = real(stop) * 6;
			exit;
		}
	}
	
	if cur_l == "\\"
	{
		writer++;
		if string_char_at(dialogue[curdiag], writer) == "e"
			writer++;
		exit;
	}
	
	var diagsound = sfx_antonstep3;
	audio_stop_sound(diagsound);
	scr_soundeffect(diagsound);
}