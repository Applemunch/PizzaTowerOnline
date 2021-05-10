prompt_condition = function() {
	return global.snickchallenge && global.snickrematch;
}
prompt_array[0] = tv_create_prompt("PTV interrupts this program to point out the sentence \"SNACK IS COMING\" has suddenly appeared on our monitor. We can't tell whether we should be running away or not.", false, spr_tv_idleanim1, 3);