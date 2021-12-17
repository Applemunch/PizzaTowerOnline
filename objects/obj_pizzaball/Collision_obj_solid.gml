if state != states.golf && other.object_index != obj_enemyblock
&& !inst_relation(other, obj_destructibles)
{
	instance_create(x, y, obj_balloonpop);
	x = xstart;
	y = ystart;
}
