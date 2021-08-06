// main
scr_movingsolid(obj_player1, scr_solid_player);
with all
{
	if variable_instance_exists(id, "__scr_collide")
	{
		var ID = id;
		with other
			scr_movingsolid(ID, scr_solid);
	}
}

// move
x += hsp;
y += vsp;