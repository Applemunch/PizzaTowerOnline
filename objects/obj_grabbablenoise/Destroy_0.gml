event_inherited();
if obj_player1.character == "N"
{
	obj_player1.hsp = -obj_sausageman_dead.hsp;
	obj_player1.vsp = obj_sausageman_dead.vsp;
	obj_player1.state = states.gameover;
	obj_player1.sprite_index = other.spr_dead;
}