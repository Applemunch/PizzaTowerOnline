prompt_condition = function() {
	return global.snickchallenge && global.snickrematch;
}
prompt_array[0] = tv_create_prompt("It seems the sentences \"SNECK IS COMING\" and \"SNUCK IS COMING\" are rapidly flashing on our screen. We will attempt to get this issue resolved as soon as we can.", false, spr_tv_idleanim1, 3);