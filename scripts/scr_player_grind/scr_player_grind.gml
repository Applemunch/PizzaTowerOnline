function scr_player_grind() {
	vsp = 0
	machhitAnim = false
	crouchslideAnim = true
	hsp = xscale * movespeed

	//Fall off
	if !grinding
		state = states.mach2

	//Jump
	if key_jump 
	{
		vsp = -6
		state = states.mach2
		grinding = false
	}

	//Animations
	sprite_index = spr_player_grind
	image_speed = 0.35

	//Effects
	if !(instance_exists(obj_grindeffect))
	instance_create(x,y,obj_grindeffect)


}
