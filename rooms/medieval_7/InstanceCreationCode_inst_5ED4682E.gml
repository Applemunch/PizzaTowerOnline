prompt_condition = function()
{
	if global.panic
	{
	    //tv_reset()
	    return true;
	}
	return false;
}
prompt_array[0] = tv_create_prompt("You hate to see it! PTV Weather report is announcing an hurricane that will wipe out the entire region of this level!", false, spr_tv_idleanim1, 3);
prompt_array[1] = tv_create_prompt("Get your umbrella ready, put on your tall rain boot and coat, it wont help!", true, spr_tv_idleanim1, 3);