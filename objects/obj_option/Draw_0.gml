if live_call() return live_result;

var s = 32;
var c1 = c_black;

// square backgrund
draw_rectangle_color(0, 0, 960, 540, c2, c2, c2, c2, false);

mo = (mo + 0.5) % s;
for(var i = -s; i < __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0); i += s)
{
	for(var j = -s; j < __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0); j += s)
	{
		if (i + j) % (s * 2) != 0
			draw_rectangle_color(i + mo, j + mo, i + s + mo, j + s + mo, c1,c1,c1,c1, false)
	}
}

//Draw Text
draw_set_font(font)
draw_set_halign(fa_center);
draw_set_color(c_white)

#region option
if menu == 0
{
	if optionselected = 0
	draw_text_colour(960/2, 100, "FULLSCREEN", c_white, c_white, c_white, c_white, 1)
	else
	draw_text_colour(960/2, 100, "FULLSCREEN", c_white, c_white, c_white, c_white, 0.5)

		if optionsaved_fullscreen = 0
		{
		draw_text_colour(960/2 - 100, 150, "ON", c_white, c_white, c_white, c_white, 1);
		}
		else
		draw_text_colour(960/2- 100, 150, "ON", c_white, c_white, c_white, c_white, 0.5);
	

	
		if optionsaved_fullscreen = 1
		{
		draw_text_colour(960/2 + 100, 150, "OFF", c_white, c_white, c_white, c_white, 1);
		}
		else
		draw_text_colour(960/2 + 100, 150, "OFF", c_white, c_white, c_white, c_white, 0.5);
	



	if optionselected = 1
		draw_text_colour(960/2, 250, "RESOLUTION", c_white, c_white, c_white, c_white, 1)
	else
		draw_text_colour(960/2, 250, "RESOLUTION", c_white, c_white, c_white, c_white, 0.5)


	if optionsaved_resolution = 0
	{
		draw_text_colour(960/2 - 180, 300, "480X270", c_white, c_white, c_white, c_white, 1);
	}
	else
		draw_text_colour(960/2- 180, 300, "480X270", c_white, c_white, c_white, c_white, 0.5);
	

	if optionsaved_resolution = 1
	{
		draw_text_colour(960/2 , 300, "960X540", c_white, c_white, c_white, c_white, 1);
	}
	else
		draw_text_colour(960/2 , 300, "960X540", c_white, c_white, c_white, c_white, 0.5);
	
	if optionsaved_resolution = 2
	{
		draw_text_colour(960/2 + 200, 300, "1920X1080", c_white, c_white, c_white, c_white, 1);
	}
	else
		draw_text_colour(960/2 + 200, 300, "1920X1080", c_white, c_white, c_white, c_white, 0.5);


	// key config
	if optionselected = 2
		draw_text_colour(960/2, 375, "KEY CONFIG", c_white, c_white, c_white, c_white, 1)
	else
		draw_text_colour(960/2, 375, "KEY CONFIG", c_white, c_white, c_white, c_white, 0.5)

	// sound config
	if optionselected = 3
		draw_text_colour(960/2, 415, "SOUND CONFIG", c_white, c_white, c_white, c_white, 1)
	else
		draw_text_colour(960/2, 415, "SOUND CONFIG", c_white, c_white, c_white, c_white, 0.5)

	// sound config
	if optionselected = 4
		draw_text_colour(960/2, 455, "OTHER CONFIG", c_white, c_white, c_white, c_white, 1)
	else
		draw_text_colour(960/2, 455, "OTHER CONFIG", c_white, c_white, c_white, c_white, 0.5)
}
#endregion
#region sound options
if menu == 1
{
	var m1y = 50;
	var m2y = m1y + 100;
	
	if optionselected = 0
		draw_text_colour(960/2, m1y, "MASTER VOLUME", c_white, c_white, c_white, c_white, 1)
	else
		draw_text_colour(960/2, m1y, "MASTER VOLUME", c_white, c_white, c_white, c_white, 0.5)
	
	if optionselected = 1
		draw_text_colour(960/2, m2y, "MUSIC VOLUME", c_white, c_white, c_white, c_white, 1)
	else
		draw_text_colour(960/2, m2y, "MUSIC VOLUME", c_white, c_white, c_white, c_white, 0.5)
	
	draw_set_colour(c_gray);
	draw_rectangle(230, m1y + 56, 730, m1y + 56 + 16, false);
	draw_set_colour(c_white);
	draw_rectangle(230, m1y + 56, 230 + (global.mastervolume * 500), m1y + 56 + 16, false);
	draw_set_colour(c_black);
	draw_circle(230 + (global.mastervolume * 500), m1y + 56 + 8, 21, false);
	draw_set_colour(c_white);
	draw_circle(230 + (global.mastervolume * 500), m1y + 56 + 8, 20, false);
	
	draw_set_colour(c_gray);
	draw_rectangle(230, m2y + 56, 730, m2y + 56 + 16, false);
	draw_set_colour(c_white);
	draw_rectangle(230, m2y + 56, 230 + (global.musicvolume * 500), m2y + 56 + 16, false);
	draw_set_colour(c_black);
	draw_circle(230 + (global.musicvolume * 500), m2y + 56 + 8, 21, false);
	draw_set_colour(c_white);
	draw_circle(230 + (global.musicvolume * 500), m2y + 56 + 8, 20, false);
	
	if optionselected = 2
		draw_text_colour(960/2, m2y + 125, "MACH SOUND", c_white, c_white, c_white, c_white, 1)
	else
		draw_text_colour(960/2, m2y + 125, "MACH SOUND", c_white, c_white, c_white, c_white, 0.5)
	
	if global.machsound = 1
		draw_text_colour(960/2 - 100, m2y + 175, "OLD", c_white, c_white, c_white, c_white, 1);
	else
		draw_text_colour(960/2- 100, m2y + 175, "OLD", c_white, c_white, c_white, c_white, 0.5);
	
	if global.machsound = 0
		draw_text_colour(960/2 + 100, m2y + 175, "NEW", c_white, c_white, c_white, c_white, 1);
	else
		draw_text_colour(960/2 + 100, m2y + 175, "NEW", c_white, c_white, c_white, c_white, 0.5);
	
	if global.loaded_pc
	{
		draw_text_colour(960/2, m2y + 250, "MUSIC TYPE", c_white, c_white, c_white, c_white, (optionselected == 3 ? 1 : 0.5));
	
		draw_text_colour(960/2 - 100, m2y + 300, "NORMAL", c_white, c_white, c_white, c_white, (global.musicgame == 0 ? 1 : 0.5));
		draw_text_colour(960/2 + 100, m2y + 300, "MIDIS", c_white, c_white, c_white, c_white, (global.musicgame == 1 ? 1 : 0.5));
	}
}
#endregion
#region other option
if menu == 2
{
	draw_set_font(global.font_small);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
		
	img += 1;
	if img >= 4096
		img -= 4096;
	
	draw_sprite(spr_cursor, img * .3, 32,
		40 + (16 * optionselected)
		+ ((optionselected > 1) * 16)
		+ ((optionselected > 5) * 16)
		+ ((optionselected > 7) * 16)
		+ ((optionselected > 11) * 16)
	);
	
	draw_text_colour(72, 32 + (16 * 0), "Erase Game", c_red, c_red, c_red, c_red, (optionselected == 0 ? 1 : 0.5));
	draw_text_colour(72, 32 + (16 * 1), "Gameplay Style", c_white, c_white, c_white, c_white, (optionselected == 1 ? 1 : 0.5));
	
	draw_text_colour(72, 32 + (16 * 3), "Escape - Wavy BG", c_white, c_white, c_white, c_white, (optionselected == 2 ? 1 : 0.5));
	draw_text_colour(72, 32 + (16 * 4), "Escape - Motion Blur", c_white, c_white, c_white, c_white, (optionselected == 3 ? 1 : 0.5));
	draw_text_colour(72, 32 + (16 * 5), "Escape - Shaky", c_white, c_white, c_white, c_white, (optionselected == 4 ? 1 : 0.5));
	draw_text_colour(72, 32 + (16 * 6), "Escape - Backgrounds", c_white, c_white, c_white, c_white, (optionselected == 5 ? 1 : 0.5));
	
	draw_text_colour(72, 32 + (16 * 8), "Visual - Fancy Afterimages", c_white, c_white, c_white, c_white, (optionselected == 6 ? 1 : 0.5));
	draw_text_colour(72, 32 + (16 * 9), "Visual - Fancy Debris", c_white, c_white, c_white, c_white, (optionselected == 7 ? 1 : 0.5));
	
	draw_text_colour(72, 32 + (16 * 11), "Online - Show Names", c_white, c_white, c_white, c_white, (optionselected == 8 ? 1 : 0.5));
	draw_text_colour(72, 32 + (16 * 12), "Online - Chat Bubbles", c_white, c_white, c_white, c_white, (optionselected == 9 ? 1 : 0.5));
	draw_text_colour(72, 32 + (16 * 13), "Online - Sync Effects", c_white, c_white, c_white, c_white, (optionselected == 10 ? 1 : 0.5));
	draw_text_colour(72, 32 + (16 * 14), "Online - Streamer Mode", c_white, c_white, c_white, c_white, (optionselected == 11 ? 1 : 0.5));
	//draw_text_colour(72, 32 + (16 * 13), "Online - PvP", c_white, c_white, c_white, c_white, (optionselected == 10 ? 1 : 0.5));
	
	draw_text_colour(72, 32 + (16 * 16), "Other - Discord Rich Presence", c_white, c_white, c_white, c_white, (optionselected == 12 ? 1 : 0.5));
	draw_text_colour(72, 32 + (16 * 17), "Other - FPS Counter", c_white, c_white, c_white, c_white, (optionselected == 13 ? 1 : 0.5));
	
	switch optionselected
	{
		#region erase game
		
		case 0:
			draw_set_colour(c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "ERASE GAME");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "All your progress, gone.");
			
			pal_swap_set(spr_peppalette, 1, false);
			draw_sprite_ext(spr_pepinoHUDhurt, img * .35, 640, 320, -2, 2, 0, c_white, 1)
			pal_swap_reset();
			break;
		
		#endregion
		#region gameplay style
		
		case 1:
			draw_set_colour(c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "GAMEPLAY STYLE");
			
			draw_set_font(global.smallfont);
			
			var sagecol = (global.gameplay == 0 ? merge_colour(c_lime, c_white, 0.5) : c_white);
			var finalcol = (global.gameplay == 1 ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_text_colour(640 - 50, 100, "OLD", sagecol, sagecol, sagecol, sagecol, (global.gameplay == 0 ? 1 : 0.5));
			draw_text_colour(640 + 50, 100, "FINAL", finalcol, finalcol, finalcol, finalcol, (global.gameplay == 1 ? 1 : 0.5));
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 128, "The game changed a lot almost last minute.\nSome people prefer the old gameplay.");
			
			pal_swap_set(spr_peppalette, 1, false);
			if global.gameplay == 0
				draw_sprite_ext(spr_player_suplexgrabjump, img * .35, 640, 320, 2, 2, 0, c_white, 1);
			else
				draw_sprite_ext(spr_player_mach2jump, img * .35, 640, 320, 2, 2, 0, c_white, 1);
			pal_swap_reset();
			break;
		
		#endregion
		
		#region escape wave bg
		
		case 2:
			draw_set_colour(global.panicbg ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "WAVY BACKGROUND");
			
			draw_set_font(global.font_small);
			draw_set_colour(check_shaders() ? c_ltgray : merge_colour(c_red, c_white, 0.5));
			draw_text(640, 96, (check_shaders() ? "When it's pizza time, the background distorts intensly." : "shit graphics mode on. This option is locked."));
			
			if check_shaders() && (global.panicbg or trans > 0.1) && shader_is_compiled(shd_panicbg)
			{
				// preview
				if !surface_exists(surf)
					surf = surface_create(960, 540);
				else
				{
					surface_set_target(surf);
					draw_clear_alpha(c_black, 0);
					draw_sprite_ext(bg_desert, img * 0.25, 400 + 5, 200 + 5, 0.5, 0.5, -0.5, c_black, 0.5);
					draw_sprite_ext(bg_desert, img * 0.25, 400, 200, 0.5, 0.5, -0.5, c_white, 1);
					surface_reset_target();
				
					shader_set(shd_panicbg);
					var unif;
					
					// Set panic intensity in shader
					unif = shader_get_uniform(shd_panicbg, "panic");
					shader_set_uniform_f(unif, 0.75);
				
					// Set current time in shader
					unif = shader_get_uniform(shd_panicbg, "time");
					shader_set_uniform_f(unif, current_time / 1000);
				
					// Set amplitude
					trans = lerp(trans, global.panicbg, 0.25);
					unif = shader_get_uniform(shd_panicbg, "mult");
					shader_set_uniform_f(unif, trans);
					
					draw_surface(surf, 0, 0);
					shader_reset();
				}
			}
			else
			{
				draw_sprite_ext(bg_desert, 0, 400 + 5, 200 + 5, 0.5, 0.5, -0.5, c_black, 0.25);
				draw_sprite_ext(bg_desert, img * 0.25, 400, 200, 0.5, 0.5, -0.5, c_white, 1);
				trans = 0;
				
				if global.panicbg
				{
					draw_set_colour(c_white);
					draw_set_halign(fa_center);
					draw_set_halign(fa_middle);
					draw_text_transformed(400 + (1000 / 2), 200 + (540 / 2), "Shaders not compiled.\nPlease restart the game.", 2, 2, -0.5);
					
					draw_set_halign(fa_top);
					draw_sprite_ext(bg_desert, img * 0.25, 400, 200, 0.5, 0.5, -0.5, c_black, 0.5);
				}
			}
			break;
		
		#endregion
		#region escape motion blur
		
		case 3:
			draw_set_colour(global.panicmelt ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "MOTION BLUR");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "When it's pizza time, the whole screen has motion blur.");
			
			// player
			if !variable_instance_exists(id, "movespeed") or keyboard_check_pressed(ord("R"))
			{
				state = 0;
				movespeed = 0;
			}
			
			var spr = spr_player_idle;
			var isp = 0.35;
			switch floor(state)
			{
				default:
					state = 0;
					
				case 0:
					spr = spr_player_mach1;
					movespeed += 0.3;
					if movespeed >= 12
						state = 1;
					break;
				
				case 1:
					spr = spr_player_mach;
					movespeed += 0.1;
					if movespeed >= 16
						state = 2;
					
					isp = 0.4;
					break;
				
				case 2:
					movespeed += 0.001;
					if movespeed >= 24
					{
						spr = spr_player_crazyrun;
						isp = 0.4;
					}
					else
					{
						spr = spr_player_mach4;
						isp = 0.35;
					}
					break;
				
				case 3:
					movespeed = 0;
					
					img2 += 0.35;
					if state == 3.1
					{
						spr = spr_player_machslidestart;
						if img2 >= 6
							state = 3;
					}
					else
						spr = spr_player_machslide;
					
					x = lerp(x, 660, 0.1);
					movespeed = floor(min(x - xprevious, 24));
					x = xprevious;
					
					if floor(x) >= 650 && floor(x) <= 670 && state != 3.1
						state = 4;
					break;
			}
			x = wrap(x + movespeed, -100, 960 + 100);
			
			pal_swap_set(spr_peppalette, 1, false);
			draw_sprite_ext(spr, (floor(state) == 3 ? img2 : (state == 0 ? lerp(0, sprite_get_number(spr), movespeed / 12) : img * isp)), x, 280, 2, 2, 0, c_white, 1)
			pal_swap_reset();
			
			// blur
			global.wave = lerp(global.wave, global.panicmelt * 1.25, 0.05);
			global.maxwave = 1;
			
			obj_camera.blurpreview = global.wave > 0;
			break;
		
		#endregion
		#region escape shake
		
		case 4:
			draw_set_colour(global.panicshake ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "ESCAPE SHAKE");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "When it's pizza time, the screen shakes.");
			
			// player
			var spr = spr_player_idle;
			var isp = 0.35;
			switch floor(state)
			{
				default:
					if state != 0
					{
						state = 3.1;
						img2 = 0;
					}
					else
						state = 4;
				
				case 3:
					movespeed = 0;
					
					img2 += 0.35;
					if state == 3.1
					{
						spr = spr_player_machslidestart;
						if img2 >= 6
							state = 3;
					}
					else
						spr = spr_player_machslide;
					
					x = lerp(x, 660, 0.1);
					movespeed = floor(min(x - xprevious, 24));
					x = xprevious;
					
					if floor(x) >= 650 && floor(x) <= 670 && state != 3.1
						state = 4;
					break;
				
				case 4:
					movespeed = 0;
					spr = spr_player_panic;
					isp = .15;
					x = lerp(x, 660, 0.75);
					break;
			}
			x = wrap(x + movespeed, -100, 960 + 100);
			
			pal_swap_set(spr_peppalette, 1, false);
			draw_sprite_ext(spr, (floor(state) == 3 ? img2 : (state == 0 ? lerp(0, sprite_get_number(spr), movespeed / 12) : img * isp)), x, 280 + (global.panicshake * random_range(-4, 4)), (movespeed == 0 ? 2 : sign(movespeed) * 2), 2, 0, c_white, 1)
			pal_swap_reset();
			break;
		
		#endregion
		#region escape backgrounds
		
		case 5:
			draw_set_colour(global.panicnightmare ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "ESCAPE BACKGROUND");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "When it's pizza time, the background can change.");
			
			draw_sprite_ext(bg_factory3, 0, 400 + 5, 200 + 5, 0.5, 0.5, -0.5, c_black, 0.25);
			draw_sprite_ext(global.panicnightmare ? bg_factory3escape : bg_factory3, img * 0.25, 400, 200, 0.5, 0.5, -0.5, c_white, 1);
			break;
		
		#endregion
		
		#region surface afterimages
		
		case 6:
			if !variable_instance_exists(id, "alm")
			{
				alm = 0;
				vis = true;
			}
			
			draw_set_colour(global.surfacemach ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "FANCY AFTERIMAGES");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "Applies the current palette to the afterimages.\nResource intensive.");
			
			spr = spr_player_mach;
			alm--;
			if alm <= 0
			{
				img2 = (img * 0.2) - 1;
				alm += 3;
				vis = !vis;
				image_blend = choose(make_colour_rgb(96, 208, 72), make_colour_rgb(248, 0, 0));
				
				if img2 % 1 == 0
					trans += 0.01;
				if trans >= pal_swap_get_pal_count(spr_peppalette) / 100
					trans = 0;
			}
			
			if global.surfacemach && vis
			{
				pal_swap_set(spr_peppalette, trans * 100, false);
				draw_sprite_ext(spr_player_mach, img2, 660 - 75, 280, 2, 2, 0, image_blend, 1);
				pal_swap_reset();
			}
			else if vis
				draw_sprite_ext(spr_player_mach, img2, 660 - 75, 280, 2, 2, 0, image_blend, 1);
			
			pal_swap_set(spr_peppalette, trans * 100, false);
			draw_sprite_ext(spr_player_mach, img * 0.2, 660, 280, 2, 2, 0, c_white, 1);
			pal_swap_reset();
			break;
		
		#endregion
		#region secret debris
		
		case 7:
			draw_set_colour(global.secretdebris ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "FANCY DEBRIS");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "Secret debris will have their respective tiles.");
			
			if global.secretdebris
			{
				spr = spr_bigdebris;
				if !variable_instance_exists(id, "tspr")
					tspr = spr_tile_medieval1;
				
				if !surface_exists(surf)
				    surf = surface_create(sprite_get_width(spr), sprite_get_height(spr));
				surface_set_target(surf);
				
				draw_clear_alpha(c_black, 0);
				gpu_set_blendmode(bm_normal);
				draw_sprite_ext(spr_secretbigdebris, img * 0.05, sprite_get_xoffset(spr), sprite_get_yoffset(spr), 1, 1, image_angle, c_white, image_alpha);
				
				if img * 0.05 % 1 == 0
				{
					var tprev = tspr;
					while tspr == tprev
						tspr = choose(spr_tile_tower1, spr_tile_medieval1, spr_tile_ruin1, spr_tile_dungeon1, spr_tile_strongcold1, spr_tile_chateau1, spr_tile_desert1, spr_tile_ufo1, spr_tile_wasteyard1, spr_tile_farm1, spr_tile_pinball1, spr_tile_pinball2, spr_tile_pinball3, spr_tile_beach1, spr_tile_beach3, spr_tile_forest2);
				}
				
				gpu_set_blendmode_ext(bm_dest_colour, bm_inv_src_alpha);
				draw_sprite(tspr, 32, 0, 0);
				draw_sprite(tspr, 32, 32, 0);
				draw_sprite(tspr, 32, 0, 32);
				draw_sprite(tspr, 32, 32, 32);
				draw_sprite(tspr, 32, -32, 0);
				draw_sprite(tspr, 32, 0, -32);
				draw_sprite(tspr, 32, -32, -32);
				draw_sprite(tspr, 32, 32, -32);
				draw_sprite(tspr, 32, -32, 32);
				gpu_set_blendmode(bm_normal);

				surface_reset_target();
				draw_surface_ext(surf, 660 - sprite_get_xoffset(spr) * 2, 280 - sprite_get_yoffset(spr) * 2, 2, 2, 0, c_white, 1);
			}
			else
			{
				spr = spr_bigdebris;
				draw_sprite_ext(spr, img * 0.05, 660, 280, 2, 2, image_angle, c_white, image_alpha);
			}
			break;
		
		#endregion
		
		#region show names
		
		case 8:
			draw_set_colour(global.shownames ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "SHOW NAMES");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "Show other people's usernames in gameplay.");
			
			pal_swap_set(spr_peppalette, 1, false);
			draw_sprite_ext(spr_player_idle, img * .35, 640, 320, 2, 2, 0, c_white, 1)
			pal_swap_reset();
			
			draw_set_font(global.font_small);
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			draw_set_colour(c_owner);
			
			if global.shownames
				draw_text_transformed(640, sprite_get_bbox_top(spr_player_idle) + 320 - 120, "Player" + string(floor(current_year / 1000) * 1000), 2, 2, 0);
			break;
		
		#endregion
		#region chat bubbles
		
		case 9:
			draw_set_colour(global.chatbubbles ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "CHAT BUBBLES");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "Conveniently show other people's last message.");
			
			pal_swap_set(spr_peppalette, 1, false);
			draw_sprite_ext(spr_player_idle, img * .35, 640, 320, 2, 2, 0, c_white, 1)
			pal_swap_reset();
			
			draw_set_font(global.font_small);
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			draw_set_colour(c_owner);
			
			if global.shownames
				draw_text_transformed(640, sprite_get_bbox_top(spr_player_idle) + 320 - 120, "Player" + string(floor(current_year / 1000) * 1000), 2, 2, 0);
			
			if global.chatbubbles
			{
				// bubble
				draw_set_halign(fa_center);
				draw_set_valign(fa_top);
				
				var message = "Pico Comedy";
				
		        _w = max(0.01, min(string_width(message), room_width / 4));
		        _w = string_width_ext((message), -1, _w);
		        _h = string_height_ext((message), -1, _w);
			
				draw_set_colour(c_black);
				draw_roundrect(640 - _w / 2 - 10 - 1, 320 - _h + sprite_get_bbox_top(sprite_index) - 32 - 40 * (global.shownames + 1) - 1, 640 + _w / 2 + 10 + 1, 320 + sprite_get_bbox_top(sprite_index) - 22 - 40 * (global.shownames + 1) + 1, 0);
				draw_roundrect(640 - _w / 2 - 10 + 4, 320 - _h + sprite_get_bbox_top(sprite_index) - 32 - 40 * (global.shownames + 1) + 4, 640 + _w / 2 + 10 + 4, 320 + sprite_get_bbox_top(sprite_index) - 22 - 40 * (global.shownames + 1) + 4, 0);
	            draw_set_color(c_white);
	            draw_roundrect(640 - _w / 2 - 10, 320 - _h + sprite_get_bbox_top(sprite_index) - 32 - 40 * (global.shownames + 1), 640 + _w / 2 + 10, 320 + sprite_get_bbox_top(sprite_index) - 22 - 40 * (global.shownames + 1), 0);
	            draw_set_color(c_white);
	            draw_text_ext(floor(640), floor(320 - _h + sprite_get_bbox_top(sprite_index) - 24 - 40 * (global.shownames + 1)), string(message), -1, _w);
				
				draw_set_halign(fa_left);
			}
			break;
		
		#endregion
		#region pvp
		
		/*
		case 10:
			draw_set_colour(global.pvp ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "PVP");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "Attack other players. The other player will need PVP enabled.");
			
			pal_swap_set(spr_peppalette, 1, false);
			draw_sprite_ext(spr_player_idle, img * .35, 640, 320, 2, 2, 0, c_white, 1)
			pal_swap_reset();
			
			draw_text_transformed(640, sprite_get_bbox_top(spr_player_idle) + 320 - 120, "placeholder", 2, 2, 0);
			break;
		*/
		
		#endregion
		#region sync effects
		
		case 10:
			draw_set_colour(global.synceffect ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "SYNC EFFECTS");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "In online mode, sync effects like afterimages or taunt.");
			
			if global.synceffect
				draw_sprite_ext(spr_taunteffect, 10, 640, 320, 2, 2, 0, c_white, 1);
			pal_swap_set(spr_peppalette, 1, false);
			draw_sprite_ext(spr_player_taunt, 6, 640, 320, 2, 2, 0, c_white, 1);
			pal_swap_reset();
			
			draw_set_font(global.font_small);
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			draw_set_colour(c_owner);
			
			if global.shownames
				draw_text_transformed(640, sprite_get_bbox_top(spr_player_taunt) + 320 - 120, "Player" + string(floor(current_year / 1000) * 1000), 2, 2, 0);
			break;
		
		#endregion
		#region streamer mode
		
		case 11:
			draw_set_colour(global.streamer ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "STREAMER MODE");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "Should replace most appearances of player names with boring player IDs.");
			
			pal_swap_set(spr_peppalette, 1, false);
			draw_sprite_ext(spr_player_idle, img * 0.35, 640, 320, 2, 2, 0, c_white, 1);
			pal_swap_reset();
			
			draw_set_font(global.font_small);
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			draw_set_colour(c_owner);
			
			var name = "COOLSKELETON95";
			if global.streamer
				name = "Player2";
			
			draw_text_transformed(640, sprite_get_bbox_top(spr_player_idle) + 320 - 120, name, 2, 2, 0);
			break;
		
		#endregion
		#region rich presence
		
		case 12:
			draw_set_colour(global.richpresence ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "RICH PRESENCE");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "Show some fancy stuff in your Discord status.");
			
			draw_set_colour($E66054);
			draw_set_alpha(0.25);
			draw_roundrect(460 + 5, 180 + 5, 820 + 5, 340 + 5, false);
			draw_set_alpha(1);
			draw_roundrect(460, 180, 820, 340, false);
			
			if global.richpresence
			{
				pal_swap_set(spr_peppalette, 1, false);
				draw_sprite_ext(spr_pepinoHUD, 0, 530, 260, 1, 1, 0, c_white, 1);
				pal_swap_reset();
			
				draw_set_colour(c_white);
				draw_set_halign(fa_left);
				draw_set_font(font1);
				draw_text(600, 240, "Pizza Tower ONLINE");
				draw_set_font(fnt_gms_small);
				draw_text(600, 260, "In the titlescreen");
			}
			else
			{
				draw_set_colour(c_white);
				draw_set_halign(fa_left);
				draw_set_font(font0);
				draw_text_transformed(560, 240, "boring shit", 2, 2, 0);
			}
			break;
		
		#endregion
		#region rich presence
		
		case 13:
			draw_set_colour(global.showfps ? merge_colour(c_lime, c_white, 0.5) : c_white);
			draw_set_font(global.bigfont);
			draw_set_halign(fa_center);
			draw_text(640 + random_range(-1, 1), 64, "FPS COUNTER");
			
			draw_set_font(global.font_small);
			draw_set_colour(c_ltgray);
			draw_text(640, 96, "A simple FPS counter at the bottom right of the screen.");
			
			break;
		
		#endregion
	}
	if optionselected != 3
	{
		obj_camera.blurpreview = false;
		
		if optionselected != 4
		{
			x = 660;
			
			if state != 3.1
			{
				movespeed = 0;
				state = 0;
			}
			if optionselected != 6
				img2 = 0;
		}
	}
	
	/*
	draw_text_colour(960/2 - 100, m1y + 50, "ON", c_white, c_white, c_white, c_white, global.panicbg ? 1 : 0.5);
	draw_text_colour(960/2 + 100, m1y + 50, "OFF", c_white, c_white, c_white, c_white, global.panicbg ? 0.5 : 1);
	
	draw_text_colour(960/2 - 100, m2y + 50, "ON", c_white, c_white, c_white, c_white, global.panicmelt ? 1 : 0.5);
	draw_text_colour(960/2 + 100, m2y + 50, "OFF", c_white, c_white, c_white, c_white, global.panicmelt ? 0.5 : 1);
	
	draw_text_colour(960/2 - 100, m3y + 50, "ON", c_white, c_white, c_white, c_white, global.panicshake ? 1 : 0.5);
	draw_text_colour(960/2 + 100, m3y + 50, "OFF", c_white, c_white, c_white, c_white, global.panicshake ? 0.5 : 1);
	*/
}
else
	obj_camera.blurpreview = false;
#endregion