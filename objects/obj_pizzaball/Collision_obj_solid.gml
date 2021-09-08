if state != states.golf && other.object_index != obj_enemyblock
&& !object_is_ancestor(other.object_index, obj_destructibles)
{
	instance_create(x, y, obj_balloonpop);
	x = xstart;
	y = ystart;
}