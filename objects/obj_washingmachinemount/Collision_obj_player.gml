/// @description Insert description here
// You can write your code in this editor
if other.y < y && visible = true && other.character == "N"
{
	scr_soundeffect(sfx_noisewoah)
	other.image_index = 0
	other.sprite_index = spr_playerN_hookshot1
	other.state = states.hookshot	
	visible= false
}