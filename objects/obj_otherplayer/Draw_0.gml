if room == rank_room or room == timesuproom or !viewable
	exit;
if gms_other_get_real(player_id, "room") != scr_gms_room()
	exit;

// taxi
if state == states.taxi
{	
	x = gms_other_get_real(player_id, "taxix");
	y = gms_other_get_real(player_id, "taxiy");
	var sprit = spr_taximove;
	
	baddieframe += 0.35;
	if baddieframe >= sprite_get_number(sprit)
		baddieframe = 0;
	
	draw_sprite_ext(sprit, baddieframe, x, y, 1, 1, image_angle, c_white, 1);
}
else
{
	// baddie grabbie
	var baddiegrabbed = gms_other_get_real(player_id, "grabenemy");
	if sprite_exists(baddiegrabbed)
	&& state != states.backbreaker
	{
		if baddiegrabbed != spr_junk
		{
			baddieframe += 0.35;
			if baddieframe >= sprite_get_number(baddiegrabbed)
				baddieframe = 0;
			if gms_other_get_real(player_id, "grabenemycigar")
				baddiegrabbed = spr_sausagemansmoked_grabbed;
			draw_sprite_ext(baddiegrabbed, baddieframe, gms_other_get_real(player_id, "grabenemyx"), gms_other_get_real(player_id, "grabenemyy"), -xscale, yscale, 1, c_white, 0.5);
		}
		else
		{
			var baddiegrabbedimg = player_id % (sprite_get_number(baddiegrabbed) - 1);
			if gms_other_get_real(player_id, "grabenemycigar")
			{
				baddiegrabbed = spr_punchball;
				baddiegrabbedimg = 0;
			}
			draw_sprite_ext(baddiegrabbed, baddiegrabbedimg, gms_other_get_real(player_id, "grabenemyx"), gms_other_get_real(player_id, "grabenemyy"), (baddiegrabbed == spr_punchball ? abs(xscale) : -xscale), yscale, 1, c_white, 0.5);
		}
	}

	// ladder
	if gms_other_get_real(player_id, "hooked")
	{
		baddieframe += 0.35;
		if baddieframe >= sprite_get_number(spr_flyingladder)
			baddieframe = 0;
		draw_sprite_ext(spr_flyingladder, baddieframe, x - 16, gms_other_get_real(player_id, "hooky"), 1, 1, image_angle, c_white, 0.5);
	}

	// treasure
	var treasure = gms_other_get_real(player_id, "treasure");
	if sprite_exists(treasure)
	{
		baddieframe += 0.35;
		if baddieframe >= sprite_get_number(treasure)
			baddieframe = 0;
		draw_sprite_ext(treasure, baddieframe, x, y - 35, 1, 1, image_angle, c_white, 1);
	}
	
	//Draw
	var sprit = sprite_index;
	var pausedcolor = (pause ? merge_colour(image_blend, c_black, 0.75) : image_blend);
	if !is_real(sprit) or !sprite_exists(sprit) or sprit == 0
		sprit = spr_player_idle;
	
	if state != states.cheeseball
	{
		if spr_palette == spr_peppalette && paletteselect == 17
			sprit = spr_player_petah;
		if spr_palette == spr_noisepalette && paletteselect == 15
			sprit = spr_playerN_chungus;
		if spr_palette == spr_snickpalette && paletteselect == 13
			sprit = spr_sbombic;
	}
	
	if is_real(spr_palette) && spr_palette != 0 && sprite_exists(spr_palette)
	&& (state != states.cheeseball or sprite_index == spr_playerSP_cheeseball) && (state != states.ghost or sprite_index == spr_player_ghostend && image_index >= 12)
	{
		if paletteselect < 0
		{
			/*
			var getread = gms_other_get_string(player_id, "palcolors");
			if getread != ""
			{
				if getread != dsread
				{
					dsread = getread;
					
					ds_list_clear(palcolors);
					ds_list_read(palcolors, dsread);
				
					custompal_update(palcolors);
				}
				else if !surface_exists(palcolors)
					custompal_update(palcolors);
				else
					pal_swap_set(palsurf, 1, true);
			}
			*/
		}
		else
			pal_swap_set(spr_palette, paletteselect, false);
	}
	draw_sprite_ext(sprit, image_index, x, y, xscale, yscale, image_angle, pausedcolor, image_alpha);
	pal_swap_reset();

	//Flash
	if !pause && check_shaders()
	{
		if (gms_other_get_real(player_id, "flash")) {
		    shader_set(shd_hit);    // Sets the shader to our shader file we created earlier
		    //Draw
		draw_sprite_ext(sprit, image_index, x, y, xscale, yscale, image_angle, pausedcolor, image_alpha);
		  // Draws the sprite, but now we have a shader set so it draws it as white
		    shader_reset(); // Resets the shader to the default one (does nothing)

		} else {

		}
	}

	// pizza shield
	if gms_other_get_real(player_id, "pizzashield")
	{
		shieldframe += 0.35;
		if shieldframe >= sprite_get_number(spr_pizzashield)
			shieldframe = 0;
		
		draw_sprite_ext(spr_pizzashield, shieldframe, x, y, xscale, yscale, image_angle, pausedcolor, image_alpha);
	}
	
	// cowboy hat
	var cowboy = gms_other_get_real(player_id, "cowboy");
	if sprite_exists(cowboy)
	{
		cowboyframe += sprite_get_speed(cowboy);
		if cowboyframe >= sprite_get_number(cowboy)
			cowboyframe -= sprite_get_number(cowboy);
		draw_sprite_ext(cowboy, cowboyframe, x, sprite_get_bbox_top(sprit) + y - 40, xscale, yscale, image_angle, pausedcolor, image_alpha);
	}
}

// draw name
var typingy;
if global.shownames
{
	var nickname = gms_other_get_string(player_id, "nickname");
	if nickname == ""
		nickname = name;
	if global.streamer
		nickname = "Player" + string(player_id);
	
	if gms_other_isowner(player_id)
		draw_set_colour(make_colour_hsv(color_get_hue(c_owner), color_get_saturation(c_owner), color_get_value(c_owner) * (color_get_value(image_blend) / 255)));
	else if gms_other_admin_rights(player_id)
		draw_set_colour(make_colour_hsv(color_get_hue(c_admin), color_get_saturation(c_admin), color_get_value(c_admin) * (color_get_value(image_blend) / 255)));
	else if gms_other_get_real(player_id, "pvp") == true
		draw_set_colour(make_colour_hsv(color_get_hue(c_pvp), color_get_saturation(c_pvp), color_get_value(c_pvp) * (color_get_value(image_blend) / 255)));
	else
		draw_set_colour(image_blend);
	
	draw_set_font(global.font_small);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	var yy = clamp(sprite_get_bbox_top(sprit) + y - 75, 0, room_height - 16);
	if room == custom_lvl_room
		yy = sprite_get_bbox_top(sprit) + y - 75;
	
	draw_text(x, yy, nickname);
	
	draw_set_colour(c_white);
	typingy = sprite_get_bbox_top(sprit) + y - 95;
}
else
	typingy = sprite_get_bbox_top(sprit) + y - 75;

// typing indicator
var panicy;
if gms_other_get_real(player_id, "chat")
{
	draw_set_font(global.font_small);
	draw_set_colour(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(x, typingy, "...");
	panicy = typingy - 16;
}
else
	panicy = typingy;

// panic timer
var panic = gms_other_get_real(player_id, "panic");
if panic > 0
{
	var minutes = gms_other_get_real(player_id, "panic_min");
	var seconds = gms_other_get_real(player_id, "panic_sec");
	
	var purple = make_colour_rgb(152, 80, 248);
	var dark_purple = make_colour_rgb(88, 0, 184);
	
	draw_set_font(global.bigfont);
	
	if panic == 3
		draw_set_colour(minutes < 1 && seconds <= 30 ? merge_colour(dark_purple, c_red, 0.5) : dark_purple);
	else if panic == 2
		draw_set_colour(minutes < 1 && seconds <= 30 ? merge_colour(purple, c_red, 0.5) : purple);
	else
		draw_set_colour(minutes < 1 && seconds <= 30 ? c_red : c_white);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed(x + random_range(-1, 1), panicy + random_range(-1, 1), string(minutes) + ":" + (seconds < 10 ? "0" : "") + string(seconds), 0.5, 0.5, 1);
}