if other.state != states.taxi && sprite_index == spr_taxiidle
{
	instance_create(other.x, other.y, obj_genericpoofeffect)
	other.visible = false
	other.sprite_index = other.spr_idle
	other.hsp = 0
	other.vsp = 0
	other.state = states.taxi
	
	scr_soundeffect(sfx_taxi2)
	playerid = other
	sprite_index = spr_taximove	
	hsp = 10
	other.cutscene = true
}