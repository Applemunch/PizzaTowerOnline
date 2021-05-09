if room == rm_editor exit;
with instance_create(x,y,obj_door_editor)
{
	sprite_index = spr_doorvisited
	index = other.index;
}