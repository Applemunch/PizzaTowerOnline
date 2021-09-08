/// @description border
if live_call() return live_result;

// level background
var winw = window_get_width();
var apph = window_get_height();
var appw = apph * (960 / 540);
var appx = (winw - appw) / 2;

if (frac(winw / 960) == frac(apph / 540))
or !global.drawborder
	exit;

application_surface_draw_enable(true);

var a = 0.4;
if instance_exists(obj_fadeout)
	a = lerp(0.4, 1, obj_fadeout.fadealpha);
if instance_exists(obj_pausefadeout)
	a = lerp(0.4, 1, obj_pausefadeout.fadealpha);
if instance_exists(obj_pause) && obj_pause.pause
	a = 1;

if !variable_instance_exists(id, "surf") or !surface_exists(surf)
	surf = surface_create(winw, apph);
else
{
	#region backgrounds
	
	/*
	var bg = bg_hubworld1back;
	
	var r = room_get_name(room);
	
	// general
	if r == "Realtitlescreen"
		bg = -1;
	if r == "rank_room"
		bg = -1;
	
	// suffix
	if string_endswith(string_letters(r), "secret")
	or string_endswith(string_letters(r), "secretNEW")
	{
		x += 0.35;
		y += 0.35;
		
		bg = bg_secret;
	}
	else if string_endswith(r, "_treasure")
	or string_endswith(r, "_roomtreasure")
		bg = -1;
	else if string_endswith(r, "_pizzamart")
		bg = bg_select;
	else
	{
		// hubs
		if string_startswith(r, "hub_room2")
		{
			y = 0;
			bg = bg_desertnight;
		}
		if string_startswith(r, "hub_roomSP")
			bg = bg_hubsp2;
		if string_startswith(r, "hub_outside")
			bg = bg_space1;
	
		// levels
		if string_startswith(r, "PP_room")
			bg = bg_tutorial;
		if string_startswith(r, "entrance_")
		{
			y = 0;
			if real(string_digits(r)) >= 8
				bg = bg_entrance1;
			else if real(string_digits(r)) >= 5
				bg = bg_entrance3;
			else
				bg = bg_tower;
		}
		if string_startswith(r, "medieval_")
		{
			if real(string_digits(r)) >= 9
				bg = bg_medievaltreasure2;
			else if real(string_digits(r)) >= 6
				bg = bg_medievallibrairy1;
			else if real(string_digits(r)) >= 3
				bg = bg_medievalinterior;
			else
			{
				x++;
				bg = bg_medieval3;
			}
		}
		if string_startswith(r, "ruin_")
		{
			if real(string_digits(r)) >= 11
			{
				x++;
				bg = bg_ruinstatue3;
			}
			else if real(string_digits(r)) >= 10
			{
				y--;
				bg = bg_ruincheese3;
			}
			else if real(string_digits(r)) >= 6
			{
				x++;
				bg = bg_ruinarchitecture3;
			}
			else
			{
				x++;
				bg = bg_ruin;
			}
		}
	}
	*/
	
	#endregion
	
	surface_set_target(surf);
	
	draw_clear(c_black);
	draw_set_colour(c_black);
	/*
	if room == characterselect
	{
		a = 0.65;
		draw_set_colour($400028);
		draw_rectangle(0, 0, winw, apph, false);
	}
	else if sprite_exists(bg)
	{
		if global.snickrematch
		{
			var bgre = asset_get_index(sprite_get_name(bg) + "_re");
			if sprite_exists(bgre)
				bg = bgre;
		}
		
		var _x = x;
		var _y = y;
		
		#region pre bg
		
		if bg == bg_medievalinterior
			draw_sprite_tiled(bg_medieval3, 0, x, 0);
		if bg == bg_medievalinterior_re
			draw_sprite_tiled(bg_medieval3_re, 0, x, 0);
		if bg == bg_ruin
		{
			draw_sprite_tiled(bg_medieval3, 0, 0, 0);
			draw_sprite_tiled(bg_ruincloud, 0, x, 0);
			
			_x = obj_player1.player_x;
		}
		if bg == bg_ruin_re
		{
			draw_sprite_tiled(bg_medieval3_re, 0, 0, 0);
			draw_sprite_tiled(bg_ruincloud, 0, x, 0);
			
			_x = obj_player1.player_x;
		}
		
		#endregion
		
		draw_sprite_tiled(bg, 0, _x, _y + irandom_range(-shake_mag_panic, shake_mag_panic));
		
		#region after bg
		
		if bg == bg_medieval3
		{
			draw_sprite_tiled(bg_medieval2, 0, x, 0);
			draw_sprite_tiled(bg_medieval1, 0, 0, y);
		}
		if bg == bg_medieval3_re
		{
			draw_sprite_tiled(bg_medieval2_re, 0, x, 0);
			draw_sprite_tiled(bg_medieval1_re, 0, 0, y);
		}
		if bg == bg_ruinarchitecture3
		{
			draw_sprite_tiled(bg_ruinarchitecture2, 0, x, y);
			draw_sprite_tiled(bg_ruinarchitecture1, 0, obj_player1.player_x, y);
		}
		if bg == bg_ruinarchitecture3_re
		{
			draw_sprite_tiled(bg_ruinarchitecture2_re, 0, x, y);
			draw_sprite_tiled(bg_ruinarchitecture1, 0, obj_player1.player_x, y);
		}
		if bg == bg_ruinstatue3 or bg == bg_ruinstatue3_re
			draw_sprite_tiled(bg_ruincloud, 0, x, y);
		
		#endregion
	}
	else
		draw_rectangle(0, 0, winw, apph, false);
	*/
	
	draw_sprite_tiled(bg_space1, 0, x, y + irandom_range(-shake_mag_panic, shake_mag_panic));
	
	gpu_set_blendmode(bm_subtract);
	draw_rectangle(appx, 0, appx + appw - 1, apph, false);
	gpu_set_blendmode(bm_normal);
	
	surface_reset_target();
	draw_surface(surf, 0, 0);
}

draw_set_alpha(a);
draw_rectangle_color(0, 0, appx, apph, c_black, c_black, c_black, c_black, 0);
draw_rectangle_color(appx + appw, 0, winw, apph, c_black, c_black, c_black, c_black, 0);
draw_set_alpha(1);

draw_set_colour(c_black);
draw_rectangle(appx - 2, 0, appx, apph, false);
draw_rectangle(appx + appw, 0, appx + appw + 1, apph, false);