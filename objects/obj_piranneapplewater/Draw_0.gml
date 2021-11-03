if vsp > 0 && water == noone
	water = collision_rectangle(x + 8, y, x + 8, ystart + 200, obj_water, false, true);

if water != noone && instance_exists(water)
{
	//x = Approach(x, water.x + 16, 3);
	
	if place_meeting(x, y, water)
	{
		draw_sprite_part(sprite_index, 0, 0, 0, 100, water.y - y + 50, x - sprite_xoffset, y - sprite_yoffset);
		touch = true;
	}
	else if touch
		instance_destroy();
	else
		draw_self();
}
else
	draw_self();