/// @param {real} x
/// @param {real} y
/// @param {string} string
function draw_editorbutton()
{
	var xx = argument[0];
	var yy = argument[1];
	var str = argument[2];

	var hover = false;

	if mouse_x >= xx && mouse_y >= yy
	&& mouse_x < xx + 192 && mouse_y < yy + 48
		hover = true;
	
	draw_sprite(spr_editormenu_button, hover, xx, yy);
	draw_set_font(global.bigfont);
	draw_set_colour(c_white);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(xx + 192 / 2, yy + 48 / 2, str);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	return hover && mouse_check_button_pressed(mb_left);
}