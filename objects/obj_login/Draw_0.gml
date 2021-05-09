/// @description loading
if instance_exists(obj_gms)
	depth = obj_gms.depth - 1;
if loading
{
	draw_set_font(global.bigfont);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text((960 / 2) + random_range(-1, 1), 540 / 2, "WAIT");
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
else if debug
{
	if draw_editorbutton(64, 32, "SKIP")
	{
		instance_destroy();
		offline_travel();
	}
}