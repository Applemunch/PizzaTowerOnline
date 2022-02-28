prompt_condition = function() {
	return global.snickchallenge && global.snickrematch;
}
var str = "It seems the sentences \"SNECK IS COMING\" and \"SNUCK IS COMING\" are rapidly flashing on our screen. We will attempt to get this issue resolvvvvv";
repeat 50
	str += chr(random_range(32, 127));
prompt_array[0] = tv_create_prompt(str, false, spr_tv_idleanim1, 3);
