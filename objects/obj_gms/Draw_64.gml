/// @description global messages
if showmessage
{
	draw_set_colour(c_black);
	draw_set_alpha(0.25);
	draw_rectangle(0, 0, 960, 540, false);
	
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(global.font_small);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if is_string(__author) && __author != ""
		draw_text(960 / 2, (540 / 2) - 20, __author + " says...\n");
	else
		draw_text(960 / 2, (540 / 2) - 20, "Global Message\n");
	
	if is_string(global.__gotmessage[1])
		draw_text_ext_transformed((960 / 2) + random_range(-1, 1), 540 / 2, "\n" + global.__gotmessage[1], 16, 960 / 2, 2, 2, 0);
	else
		draw_text_transformed((960 / 2) + random_range(-1, 1), 540 / 2, "\n(error)", 2, 2, 0);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

if disconnected
{
	draw_set_font(global.bigfont);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text((960 / 2) + random_range(-1, 1), 540 / 2, "DISCONNECTED PLEASE WAIT");
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}