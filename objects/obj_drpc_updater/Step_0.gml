if running
{
	// little icon for character
	if instance_exists(obj_player1) && room != Realtitlescreen && room != characterselect
	{
		setda = false;
		if obj_player1.character != charprev
		{
			charprev = obj_player1.character;
			switch charprev
			{
				case "P":
					rousr_dissonance_set_small_image("char_p", "Peppino");
					break;
				case "N":
					rousr_dissonance_set_small_image("char_n", "The Noise");
					break;
				case "V":
					rousr_dissonance_set_small_image("char_v", "Vigilante");
					break;
				case "S":
					rousr_dissonance_set_small_image("char_s", "Snick");
					break;
				case "G":
					rousr_dissonance_set_small_image("char_g", "Glade");
					break;
				case "SP":
					rousr_dissonance_set_small_image("char_sp", "Pizzelle");
					break;
				default:
					rousr_dissonance_set_small_image("char_unknown", "Playing as who?");
					break;
			}
		}
	}
	else if !setda
	{
		setda = true;
		charprev = "";
		rousr_dissonance_set_small_image("", "");
	}
}