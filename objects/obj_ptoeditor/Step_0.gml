// get mouse pos
var mx = floor(mouse_x / grid) * grid;
var my = floor(mouse_y / grid) * grid;

// manipulate level
if mouse_check_button(mb_left)
{
	if instance_exists(dragobj)
	{
		// dragging object
		if !collision_point(mx, my, dragobj, false, true)
		{
			dragobj.x = mx;
			dragobj.y = my;
		}
	}
	else
	{
		// place object
		var col = collision_point(mx, my, obj_oeobj, false, true);
		if instance_exists(col)// && (col.x == mx && col.y == my)
		{
			if mouse_check_button_pressed(mb_left)
			{
				// drag object
				dragobj = col;
			}
		}
		else
		{
			var inst = instance_create(mx, my, obj_oeobj)
			inst.obj = obj[sectsel][sel];
			inst.sprite_index = object_get_sprite(inst.obj);
		}
	}
}

// stop dragging
else if instance_exists(dragobj)
{
	dragobj = noone;
	dragx = 0;
	dragy = 0;
}
mxprev = mx;
myprev = my;