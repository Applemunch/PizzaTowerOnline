prompt_condition = function()
{
	if global.panic
		return true;
	return false;
}
prompt_array[0] = tv_create_prompt("This is a friendly reminder from PTV that weather report highly suggest you do not stay outside for the hurricane. Or inside either as matter of fact.", false, spr_tv_idleanim1, 3);