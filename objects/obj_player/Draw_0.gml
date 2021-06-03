//Draw
drawspr = sprite_index;
var _img = image_index;

if state != states.cheeseball
{
	if scr_checkskin(checkskin.p_peter)
		drawspr = spr_player_petah;
	if scr_checkskin(checkskin.n_big)
		drawspr = spr_playerN_chungus;
	if scr_checkskin(checkskin.s_sbombic)
		drawspr = spr_sbombic;
	
	if scr_checkskin(checkskin.n_nose)
	{
		_img = 0;
		drawspr = spr_playerN_idle;
		if !grounded or state == states.machroll or state == states.crouch or state == states.crouchjump
		or state == states.crouchslide or sprite_index == spr_playerN_tumble or state == states.boxxedpep
			drawspr = spr_playerN_head;
		
		if x != xprevious or y != yprevious
		{
			with instance_create(x, y, obj_noseafterimage)
			{
				image_xscale = other.xscale;
				sprite_index = other.drawspr;
				depth = other.depth + 1;
			}
		}
	}
}

if (state != states.cheeseball or drawspr == spr_playerSP_cheeseball) && ((state != states.ghost or drawspr == spr_player_ghostend && image_index >= 12) or character != "P")
{
	if paletteselect == -1
	{
		if !surface_exists(palsurf)
			custompal_update(palcolors);
		else
			pal_swap_set(palsurf, 1, true);
	}
	else
		pal_swap_set(spr_palette, paletteselect, false);
}

draw_sprite_ext(drawspr, _img, x + random_range(-shake, shake), y, xscale, yscale, image_angle, image_blend, image_alpha);
shader_reset()

//Flash
if flash == true && check_shaders()
{ 
    shader_set(shd_hit); // Sets the shader to our shader file we created earlier
	
    //Draw
	draw_sprite_ext(drawspr, _img, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
	
	// Draws the sprite, but now we have a shader set so it draws it as white
    shader_reset(); // Resets the shader to the default one (does nothing)
}

// Cowboyhat
if hatsprite > -1
{
	hatimg += sprite_get_speed(hatsprite);
	if hatimg >= sprite_get_number(hatsprite)
		hatimg -= sprite_get_number(hatsprite);
	draw_sprite_ext(hatsprite, hatimg, x, sprite_get_bbox_top(drawspr) + y - 40, xscale, yscale, image_angle, image_blend, image_alpha);
}

// Draw name
if instance_exists(obj_gms) && gms_info_isloggedin()
{
	draw_set_font(global.font_small);
	
	if gms_self_isowner()
		draw_set_colour(make_colour_hsv(color_get_hue(c_owner), color_get_saturation(c_owner), color_get_value(c_owner) * (color_get_value(image_blend) / 255)));
	else if gms_self_admin_rights()
		draw_set_colour(make_colour_hsv(color_get_hue(c_admin), color_get_saturation(c_admin), color_get_value(c_admin) * (color_get_value(image_blend) / 255)));
	else if global.pvp
		draw_set_colour(make_colour_hsv(color_get_hue(c_pvp), color_get_saturation(c_pvp), color_get_value(c_pvp) * (color_get_value(image_blend) / 255)));
	else
		draw_set_colour(image_blend);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	
	var yy = clamp(sprite_get_bbox_top(drawspr) + y - 75, 0, room_height - 16);
	if room == custom_lvl_room
		yy = sprite_get_bbox_top(drawspr) + y - 75;
	
	var nick = (nickname == "" ? gms_self_name() : nickname);
	if global.streamer
		nick = "Player" + string(gms_self_playerid());
	
	draw_text(x, yy, nick);
	
	draw_set_halign(fa_left);
	draw_set_colour(c_white);
}