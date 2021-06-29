/// @description loading
if instance_exists(obj_gms)
	depth = obj_gms.depth - 1;

draw_set_font(font1);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_alpha(0.35);
draw_text(960 / 2, 540 - 24, "PT Online v" + string(obj_gms.gameversion) + (debug ? " (dev)" : "") + ". Build datetime: " + string(date_datetime_string(GM_build_date)));
draw_set_alpha(1);

if loading
{
	draw_set_font(global.bigfont);
	draw_set_valign(fa_middle);
	draw_text((960 / 2) + random_range(-1, 1), 540 / 2, "WAIT");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);