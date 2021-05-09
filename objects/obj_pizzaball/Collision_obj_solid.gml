if state != states.grabbed
&& other.object_index != obj_enemyblock
&& object_get_parent(other.object_index) != obj_destructibles
&& object_get_parent(other.object_index) != obj_bigdestructibles
{
	x = xstart;
	y = ystart;
}