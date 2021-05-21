/// @description 
if thrown
{
	with obj_destructibles
	{
		if place_meeting(x - other.hsp, y, other)
			instance_destroy();
	}
	if abs(hsp) < 24 && grav == 0
		grav = 0.35;
}
if state != states.grabbed
{
	clipin = 60;
	scr_collide();
}
else
	scr_enemy_grabbed();

if escape && (!global.panic or (global.gameplay == 0 && object_index != obj_minijohn))
{
	boundbox = false;
	instance_deactivate_object(id);
}