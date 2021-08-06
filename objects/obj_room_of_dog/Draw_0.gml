if surface_exists(surf)
{
	surface_set_target(surf);
	
	pal_swap_set(spr_peppalette, 1, false);
	draw_sprite_ext(spr_player_scaredjump3, sprite_get_number(spr_player_scaredjump3) - 1, 50, 50, 1, 1, 0, c_white, 1);
	pal_swap_reset();
	
	surface_reset_target();
	
	draw_surface_ext(surf, (room_width / 2) - 100, (room_height / 2) - 100, 2, 2, 0, c_white, 1);
}
else
	surf = surface_create(100, 100);

draw_set_colour(c_white);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_font(global.font_small);

if alarm[0] > -1
	draw_text(room_width / 2, 90, lang_string("general.drm.wait"));
else
	draw_text(room_width / 2, 90, lang_string("general.drm"));

if keyboard_check_pressed(ord("R")) && alarm[0] <= -1
{
	scr_soundeffect(sfx_step);
	alarm[0] = 5;
}