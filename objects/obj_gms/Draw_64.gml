/// @description global messages
if showmessage
{
	// black overlay
	draw_set_colour(c_black);
	draw_set_alpha(0.25);
	draw_rectangle(0, 0, 960, 540, false);
	
	// prepare text
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(global.font_small);
	
	// person says...
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if is_string(__author) && __author != ""
		draw_text(960 / 2, (540 / 2) - 20, __author + " " + lang_string("online.global.says") + "\n");
	else
		draw_text(960 / 2, (540 / 2) - 20, lang_string("online.global") + "\n");
	
	// message
	var msgstr = global.__gotmessage[1];
	if !is_string(msgstr)
		msgstr = lang_string("online.global.error");
	draw_text_ext_transformed((960 / 2) + random_range(-1, 1), 540 / 2, "\n" + msgstr, 16, 960 / 2, 2, 2, 0);
	
	// reset align
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

if disconnected
{
	draw_set_font(global.bigfont);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text((960 / 2) + random_range(-1, 1), 540 / 2, lang_string("online.reconnecting"));
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}