if index < 0 exit;
if obj_player1.state != states.taxi && sprite_index = spr_taxiidle
{
	with obj_stopsign_editor {
		if index == other.index {
			other.sign_id = id;
			other.xx = x;
			other.yy = y;
		}
	}
	
	obj_player1.visible = false
	obj_player1.sprite_index = obj_player1.spr_idle
	obj_player1.hsp = 0
	obj_player1.vsp = 0
	obj_player1.state = states.taxi
	scr_soundeffect(sfx_taxi2)
	playerid = obj_player1
	sprite_index = spr_taximove	
	hsp = 10
	obj_player1.cutscene = true
}