prompt_condition = function()
{
	if global.panic
		return true;
	return false;
}
prompt_array[0] = tv_create_prompt("PTV interrupts this program to read out loud some big numbers that have suddenly appeared on our monitor.", false, spr_tv_idleanim1, 3);
prompt_array[1] = tv_create_prompt("PTV isn't really sure what this countdown means, why the ground is shaking or why people are screaming.", true, spr_tv_idleanim2, 3);