//Draw Text
if !(instance_exists(obj_player1) && obj_player1.state == states.rotate)
{
	draw_set_alpha(1)
	draw_set_font(global.smallfont)
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_white)
	
	draw_sprite(spr_roomnamebg,0,xi,yi)
	
	//Text Event
	draw_text(xi, yi, string_hash_to_newline(message))
}