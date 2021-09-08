if room == rm_editor exit;

var _state = states.normal;
if instance_exists(obj_player1)
{
	_state = obj_player1.state;
	if _state == states.hitlag
		_state = obj_player1.tauntstoredstate;
	if _state == states.backbreaker
	{
		with obj_teleporter
		{
			if alarm[0] > -1 or alarm[1] > -1
				_state = storedstate;
		}
		with obj_warplaser
		{
			if alarm[0] > -1 or alarm[1] > -1
				_state = storedstate;
		}
	}
}

if _state == states.knightpep or _state == states.knightpepattack or _state = states.knightpepslopes
	sprite_index = spr_swordstonetaken
else
	sprite_index = spr_swordstone

if sprite_index == spr_swordstone && !instance_exists(ID)
{
	with instance_create(x,y-20, obj_grabmarker)
		other.ID = id
}
else if sprite_index == spr_swordstonetaken && instance_exists(ID)
	instance_destroy(ID)