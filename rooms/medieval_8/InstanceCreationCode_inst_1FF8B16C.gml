prompt_condition = function()
{
	if global.snickchallenge
		return false;
	
	if place_meeting(x, y, obj_player1)
	{
	    //tv_reset();
	    return true;
	}
	return false;
}
prompt_array[0] = tv_create_prompt("We are interviewing the viral Forknight who was caught eating on the job! He swore his guard duty to the tower, but watch has he was caught on video tuckering in on crackers!", false, spr_tv_idleanim1, 3);
prompt_array[1] = tv_create_prompt("\"What can I tell you I was hungry!\"", true, spr_tv_knight, 4);
prompt_array[2] = tv_create_prompt(" The sensational Forknight says he hopes that the pillar stays up so that he will be able to eat those crackers for another day!", true, spr_tv_idleanim2, 3);