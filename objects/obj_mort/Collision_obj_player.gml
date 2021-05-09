
if sprite_index != spr_mortspawn && sprite_index != spr_mortfall
{
	with (other)
	{
		if !scr_transformationcheck()
			exit;
		
		repeat (6) with instance_create(x,y,obj_debris)
		sprite_index = spr_feather
		state = states.mort
		sprite_index = spr_player_mortidle
	}
	instance_destroy()
	
	tv_push_prompt_once(tv_create_prompt("This is the mort powerup text", 2, spr_tv_mort, 3), "mort");
}