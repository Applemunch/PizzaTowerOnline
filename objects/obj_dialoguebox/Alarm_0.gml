if live_call() return live_result;

writer++;
if writer < string_length(dialogue[curdiag])
{
	var cur_l = string_char_at(dialogue[curdiag], writer);
	
	if cur_l == "\n" or cur_l == " " or cur_l == ","
	or cur_l == "." or cur_l == "\\" or cur_l == "?"
	or cur_l == "!" or cur_l == ":" or cur_l == "\""
		exit;
	
	// pause text (format: ^1, ^2, etc.)
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
	
	// modifier (format: \\
	if cur_l == "\\"
	{
		writer++;
		writer++;
		exit;
	}
	
	if is_array(diagsound)
	{
		audio_stop_sound(diagsound_p);
		diagsound_p = scr_soundeffect(diagsound[irandom(array_length(diagsound) - 1)]);
	}
	else if audio_exists(diagsound)
	{
		audio_stop_sound(diagsound);
		scr_soundeffect(diagsound);
	}
}
