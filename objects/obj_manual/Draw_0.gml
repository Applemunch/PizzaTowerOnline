draw_sprite(spr_manual, i, 0, 0);

draw_set_font(fnt_manual);
draw_set_colour(c_red);
draw_set_valign(fa_top);

if i == 0
{
	// welcome
	draw_set_halign(fa_center);
	draw_set_colour(c_black);
	draw_text(960 / 2, 69, lang_string("manual.welcome"));
	draw_set_colour(c_red);
	draw_text(960 / 2, 68, lang_string("manual.welcome"));
}
if i == 1
{
	// controls
	draw_set_halign(fa_center);
	draw_set_colour(c_black);
	draw_text_transformed(960 / 2, 58, lang_string("manual.controls"), 2, 2, 0);
	draw_set_colour(c_red);
	draw_text_transformed(960 / 2, 56, lang_string("manual.controls"), 2, 2, 0);
	
	draw_set_halign(fa_left);
	draw_text(252, 224, lang_string("manual.controls.content"));
}
if i == 2
{
	// commands
	draw_set_halign(fa_center);
	draw_set_colour(c_black);
	draw_text_transformed(960 / 2, 58, lang_string("manual.commands"), 2, 2, 0);
	draw_set_colour(c_red);
	draw_text_transformed(960 / 2, 56, lang_string("manual.commands"), 2, 2, 0);
	
	draw_set_halign(fa_left);
	draw_text(204, 204, lang_string("manual.commands.content"));
}
if i == 3
{
	// rules
	draw_set_halign(fa_center);
	draw_set_colour(c_black);
	draw_text_transformed(960 / 2, 58, lang_string("manual.rules"), 2, 2, 0);
	draw_set_colour(c_red);
	draw_text_transformed(960 / 2, 56, lang_string("manual.rules"), 2, 2, 0);
	
	draw_text(960 / 2, 132, lang_string("manual.rules.content"));
	
	draw_set_halign(fa_left);
	draw_text(284, 224, lang_string("manual.rules.content2"));
}
if i == 4
{
	// credits
	draw_set_halign(fa_center);
	
	draw_set_colour(c_black);
	draw_text_transformed(960 / 2, 58, lang_string("manual.credits"), 2, 2, 0);
	draw_set_colour(c_red);
	draw_text_transformed(960 / 2, 56, lang_string("manual.credits"), 2, 2, 0);
	
	if global.streamer
		draw_text(960 / 2, 132, lang_string("manual.credits.fuckoffptd"));
	else
	{
		draw_text(280, 132, lang_string("manual.credits.contentleft"));
		draw_text(680, 132, lang_string("manual.credits.contentright"));
	}
}