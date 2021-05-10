prompt_condition = function()
{
	if global.snickchallenge
		return false;
	
	with obj_player1
	{
		if state == states.knightpep or state == states.knightpepslopes or state == states.knightpepattack
			return true;
	}
	return false;
}
prompt_array[0] = tv_create_prompt("Wow! It seems that thunder has turned a seemingly-unknown-as-of-now fat man into a valiant and more easily identifiable knight!", false, spr_tv_knight, 3);
prompt_array[1] = tv_create_prompt("What mighty stead will he ride? What epic quest will he accomplish?", true, spr_tv_idleanim1, 3);
prompt_array[2] = tv_create_prompt("Maybe he will just slam into a wall and become incredibly boring again?", true, spr_tv_idleanim2, 3);