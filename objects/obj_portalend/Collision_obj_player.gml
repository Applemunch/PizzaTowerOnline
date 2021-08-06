if other.state != states.portal && global.panic
{
	scr_soundeffect(sfx_box)
	
	other.sprite_index = other.spr_fall
	other.movespeed = 0
	other.hsp = 0
	sprite_index = spr_pizzaportalend
	image_index = 0
	other.state = states.portal
	other.grav = 0
	other.visible = false
}