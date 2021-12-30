//Draw
drawspr = sprite_index;
var _img = image_index;

// pln room color
var col = image_blend;
if room == hub_roomPLN
{
	var startgate = instance_place(x, y, obj_startgate);
	if !(startgate && startgate.image_index == 1)
		col = merge_colour(col, c_black, 0.4);
}

if state != states.cheeseball && state != states.cotton
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
				image_blend = col;
			}
		}
	}
}

if !flash
{
	if (state != states.cheeseball or drawspr == spr_playerSP_cheeseball) && state != states.cotton && (state != states.ghost or (drawspr == spr_player_ghostend && image_index >= 12) or spr_palette == spr_noisepalette)
		pal_swap_set(spr_palette, paletteselect, false);
}
else
	draw_set_flash(true);

draw_sprite_ext(drawspr, _img, x + random_range(-shake, shake), y, xscale, yscale, img_angle, col, image_alpha);
draw_set_flash(false);
pal_swap_reset();

// Cowboyhat
if hatsprite > -1
{
	hatimg += sprite_get_speed(hatsprite);
	if hatimg >= sprite_get_number(hatsprite)
		hatimg -= sprite_get_number(hatsprite);
	
	var yplus = lengthdir_y(-sprite_get_bbox_top(drawspr) + 40, img_angle + 90);
	draw_sprite_ext(hatsprite, hatimg, x, y + yplus, xscale, yscale, img_angle, col, image_alpha);
}

// Draw name
if instance_exists(obj_gms) && gms_info_isloggedin()
{
	draw_set_font(global.font_small);
	
	var nick = (nickname == "" ? gms_self_name() : nickname);
	if global.streamer
		nick = "Player" + string(gms_self_playerid());
	
	if gms_self_isowner()
		draw_set_colour(make_colour_hsv(color_get_hue(c_owner), color_get_saturation(c_owner), color_get_value(c_owner) * (color_get_value(col) / 255)));
	else if string_lower(gms_self_name()) == "spectralpeic"
		draw_set_colour(make_colour_hsv(color_get_hue(c_peicy), color_get_saturation(c_peicy), color_get_value(c_peicy) * (color_get_value(col) / 255)));
	else if gms_self_admin_rights()
		draw_set_colour(make_colour_hsv(color_get_hue(c_admin), color_get_saturation(c_admin), color_get_value(c_admin) * (color_get_value(col) / 255)));
	else if global.pvp
		draw_set_colour(make_colour_hsv(color_get_hue(c_pvp), color_get_saturation(c_pvp), color_get_value(c_pvp) * (color_get_value(col) / 255)));
	else
		draw_set_colour(col);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	
	var yy = clamp(sprite_get_bbox_top(drawspr) + y - 75, 0, room_height - 16);
	if room == custom_lvl_room
		yy = sprite_get_bbox_top(drawspr) + y - 75;
	
	draw_text(x, yy, nick);
	
	draw_set_halign(fa_left);
	draw_set_colour(c_white);
}