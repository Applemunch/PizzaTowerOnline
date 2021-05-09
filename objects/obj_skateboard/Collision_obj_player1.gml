if other.vsp > 0 && other.character == "P"
{
	other.movespeed = 10
	other.state = states.skateboard
	instance_destroy()
	
	tv_push_prompt_once(tv_create_prompt("This is the clown transformation text", 2, spr_tv_clown, 3), "skateboard");
}