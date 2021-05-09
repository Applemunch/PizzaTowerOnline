function tv_default_condition() {
	return place_meeting(x, y, obj_player1);
}

function tv_push_prompt(array)
{
	// @param array Array containing prompt data made with tv_create_prompt
	if global.gameplay != 0
	{
		with obj_tv
			ds_list_add(tvprompts_list, array);
	}
}
function tv_push_prompt_once(array, saved)
{
	// @param array Array containing prompt data made with tv_create_prompt
	// @param saved String containing path to saved TV prompt
	
	if global.gameplay != 0
	{
		with obj_tv
		{
			if ds_map_find_value(special_prompts, saved) != true
			{
				tv_push_prompt(array);
				
				// save
				ds_map_set(special_prompts, saved, true);
				
				ini_open("saveData.ini");
				ini_write_real("Prompts", saved, true);
				ini_close();
			}
		}
	}
}

function tv_push_prompt_array(array)
{
	// @param array Array containing... another array
	for(var i = 0; i < array_length(array); i++)
		tv_push_prompt(array[i]);
}

function tv_create_prompt(text, tvon, sprite, textspeed)
{
	// @param text The text to display in the speech bubble
	// @param tvon Keep TV on
	// @param sprite Sprite for the TV
	// @param textspeed Text scroll speed
	var array = [text, tvon, sprite, textspeed];
	return array;
}