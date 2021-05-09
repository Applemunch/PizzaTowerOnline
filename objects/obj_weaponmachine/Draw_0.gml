draw_self();
if sprite_index == spr_weaponmachine_re && image_index < 7
{
	draw_set_font(global.smallnumber);
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(x - 30, y - 26, string(price));
}