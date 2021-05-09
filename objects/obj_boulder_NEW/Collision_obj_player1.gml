
with other
{
if scr_transformationcheck()
	if !grounded && state != states.stunned
	{
		state = states.bump
		hsp = 0
		vsp = 10
		
		tv_push_prompt_once(tv_create_prompt("This is the squished transformation text", 2, spr_tv_squished, 3), "squished");
	}
}