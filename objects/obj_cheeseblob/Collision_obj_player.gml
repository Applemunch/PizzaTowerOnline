repeat 8
	instance_create(x,y,obj_slimedebris)

scr_soundeffect(sfx_pephurt)
other.state = states.cheesepep
other.sprite_index = spr_cheesepep_intro
instance_destroy()

tv_push_prompt_once(tv_create_prompt("This is the cheese transformation text", 2, spr_tv_cheesepep, 3), "cheesepep");