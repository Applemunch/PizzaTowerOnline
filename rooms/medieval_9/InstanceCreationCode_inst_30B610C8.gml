prompt_condition = function()
{
	if place_meeting(x, y, obj_player1)
	{
	    //tv_reset()
	    return true;
	}
	return false;
}
prompt_array[0] = tv_create_prompt("Wait a minute, is that gold!? Is everything golden!? We're rich! I'll never have to work another day at this crummy TV station!", false, spr_tv_idleanim1, 3);
prompt_array[1] = tv_create_prompt("Screw you Janice I lied when I said I liked my job, I just didnt want to commit to resigning!! But now it doesn't matter!!", true, spr_tv_idleanim2, 3);