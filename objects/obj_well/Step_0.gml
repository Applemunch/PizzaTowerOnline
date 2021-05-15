if !instance_exists(ID) && place_meeting(x, y, obj_player1) && obj_player1.state != states.mort
&& obj_player1.character != "V" && !global.mort
{
	instance_destroy(obj_mort)
	with instance_create(x, y - 50, obj_mort)
		other.ID = id
}