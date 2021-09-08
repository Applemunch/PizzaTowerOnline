// snick rematch vignette
if ((room == dungeon_10 or room == dungeon_9 or room == snick_challengeend) && global.snickchallenge && global.snickrematch)
{
    draw_sprite(spr_vignette, 0, 0, 0)
    instance_destroy(obj_baddie, false)
    instance_destroy(obj_baddiespawner, false)
}

// snick rematch jumpscare
if jumpscare > -1
{
    jumpscare--;
	
    if irandom(2) == 0
        jumpscareimage = irandom(sprite_get_number(spr_scares) - 1);
	
    if jumpscare <= 5
        draw_sprite(spr_scares_txt, jumpscaretext, 0, 0);
    else
        draw_sprite(spr_scares, jumpscareimage, 0, 0);
}

//Draw Text
draw_set_font(global.bigfont)
draw_set_halign(fa_center);
draw_set_color(c_white)

//Text Event
draw_set_valign(fa_bottom);
draw_text(xi, yi, string(message))
draw_set_valign(fa_top);

#region old hud

if global.gameplay == 0
{
	//Draw TV
	if global.combotime != 0 && tvsprite == spr_tvcombo
	{
		if !surface_exists(surf)
			surf = surface_create(960, 540);
	
		surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
		draw_sprite_ext(spr_tvcomboclear, -1, 832, 74, 1, 1, 0, c_white, 1);
		draw_sprite_part_ext(tvsprite, -1, 0, 0, 16 + (global.combotime / 60) * 148, 177, 832 - 82, 74 - 88, 1, 1, c_white, 1);
		surface_reset_target();
		
		draw_surface_ext(surf, 0, 0, 1, 1, 0, c_white, alpha);
	}
	else if room != strongcold_endscreen && room != Realtitlescreen
		draw_sprite_ext(tvsprite, -1, 832, 74, 1, 1, 0, c_white, alpha);

	if global.combo != 0 && global.combotime != 0 && (tvsprite = spr_tvdefault or tvsprite = spr_tvcombo)
		draw_text(852,75, string(global.combo))
	
	if tvsprite == spr_tvdefault && room != strongcold_endscreen && !global.miniboss //Default 
	{
		chose = false
		draw_text(832,60, string(global.collect))
	}
	else if global.miniboss
		draw_text(832,60, string(global.boxhp))
}

#endregion
#region new hud

else
{
	if !(instance_exists(obj_player1) && obj_player1.state == states.rotate)
	{
		/*
		if global.use_temperature
		{
		    var _width = sprite_get_width(spr_temperature_meterfill)
		    var _height = sprite_get_height(spr_temperature_meterfill)
		    global.temperature += global.temperature_spd
		    global.temperature = clamp(global.temperature, 0, (global.temp_thresholdnumber * 100))
		    var _tmp = (global.temperature / (global.temp_thresholdnumber * 100))
		    var _top = 0
		    var _height2 = (_height * _tmp)
		    draw_sprite_part_ext(spr_temperature_meterfill, 0, 0, _top, _width, _height2, 864, (192 + _height), 1, -1, c_white, 1)
		    draw_sprite(spr_temperature_meter, 0, 864, 192)
		}
		*/
		
		var collect_x = irandom_range(-collect_shake, collect_shake);
		var collect_y = irandom_range(-collect_shake, collect_shake);
		if room != strongcold_endscreen && room != Realtitlescreen
		{
			//if obj_player1.character != "S" && obj_player1.character != "V"
			//	pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false);
			
			if sprite_exists(sprite_index)
			{
				if sprite_index != spr_tv_placeholder && sprite_index != spr_tv_placeholderSP && sprite_index != spr_tv_off && sprite_index != spr_tv_open
				{
					with obj_player1
						pal_swap_set(spr_palette, paletteselect, false);
				}
				
			    draw_sprite_ext(sprite_index, image_index, 833 + collect_x, 107 + collect_y + hud_posY, 1, 1, 0, c_white, alpha)
				pal_swap_reset();
			}
			
			if global.combo != 0 && sprite_index != spr_tv_open && sprite_index != spr_tv_off
			{
			    draw_sprite_ext(sugary ? spr_tv_comboSP : spr_tv_combo, image_index, 833 + collect_x, 107 + collect_y + hud_posY, 1, 1, 0, c_white, alpha)
	    
				var str = string(global.combo);
			    if global.combo < 10
			        str = "0" + str;
			
			    draw_set_halign(fa_left);
			    draw_set_valign(fa_top);
			    draw_set_font(global.combofont);
			    var num = string_length(str);
			    var w = round(string_width(str) / num);
			    var xx = 0;
			    var yy = 0;
			    for (var i = 0; i < num; i++)
			    {
			        var char = string_char_at(str, i + 1);
			        xx = i * w;
			        yy = i * 5;
			        draw_text(789 + xx, 91 - yy + hud_posY, char);
			    }
			}
		
			var barxx = -26;
			var baryy = 30;
			draw_sprite(spr_barpop, 0, 832 + barxx, 250 + baryy);
			var sw = sprite_get_width(spr_barpop);
			var sh = sprite_get_height(spr_barpop);
			var b = global.combotime / 55;
			draw_sprite_part(spr_barpop, 1, 0, 0, sw * b, sh, 832 + barxx, 250 + baryy);
		}
	
		if bubblespr != noone
		    draw_sprite_ext(bubblespr, bubbleindex, 512, 53 + hud_posY, 1, 1, 1, c_white, alpha);
	
		if !surface_exists(promptsurface)
		    promptsurface = surface_create(290, 102);
	
		surface_set_target(promptsurface)
		draw_clear_alpha(c_black, 0)
		draw_set_font(font1)
		draw_set_halign(fa_left)
		draw_set_valign(fa_middle)
	
		if bubblespr == spr_tv_bubble
		{
		    promptx -= promptspd;
		    if bubblespr != spr_tv_bubbleclose && promptx < 350 - string_width(prompt)
		    {
		        bubblespr = spr_tv_bubbleclose;
		        bubbleindex = 0;
		    }
		    draw_text_color(promptx - 350, 50, prompt, c_black, c_black, c_black, c_black, 1);
		}
	
		draw_set_halign(fa_left);
		surface_reset_target();
		draw_surface(promptsurface, 350, hud_posY);
	}
	
	draw_set_font(global.bigfont)
}

#endregion

draw_set_valign(fa_top);
if room == hub_room1 && !(instance_exists(obj_player1) && obj_player1.state == states.victory)
{
	draw_set_halign(fa_right);
	pizzacoinframe = (pizzacoinframe + 0.35) % sprite_get_number(spr_pizzacoin);
	
	if scr_getcoin() < 0
		draw_set_colour(c_red);
	
	draw_text(960 - 64 - 32, 148 + (global.gameplay != 0 ? (64 + (sugary ? 16 : 0)) : 0), string(scr_getcoin()));
	draw_sprite_ext(spr_pizzacoin, pizzacoinframe, 960 - 64 - 24, 148 + (global.gameplay != 0 ? (64 + (sugary ? 16 : 0)) : 0), 1, 1, 0, c_white, alpha);
	
	draw_set_halign(fa_center);
}
draw_set_colour(c_white);

if instance_exists(obj_pizzaballOLD)
or instance_exists(obj_pizzaball)
{
	draw_set_halign(fa_right);
	draw_text(960 - 25, 200, string(string(global.golfhit) + " " + (global.golfhit == 1 ? "GOLF HIT" : "GOLF HITS")))
	draw_set_halign(fa_center);
}