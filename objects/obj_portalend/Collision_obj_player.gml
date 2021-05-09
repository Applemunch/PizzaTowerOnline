if other.state != states.portal && global.panic = true
{
	other.movespeed = 0
	other.hsp = 0
	sprite_index = spr_pizzaportalend
	image_index = 0
	other.state = states.portal
	other.grav = 0
	other.visible = false
}