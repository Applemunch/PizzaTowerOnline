if !show
	exit;

// background
var color = make_color_rgb(121, 103, 151);
draw_set_alpha(0.85);
draw_rectangle_color(0, 0, 960, 540, color, color, color, color, 0);
draw_set_alpha(0.25);
draw_sprite_tiled(pizza, 0, floor(x), floor(y));
draw_set_alpha(1);

y -= 0.5;
x += 0.5;

// draw the skins
img += sprite_get_speed(spr_idle) * 0.35;

if img >= sprite_get_number(spr_idle)
	img -= sprite_get_number(spr_idle);

var _spr = spr_idle;

if character == "N"
{
	if global.gameplay == 0 && noisetype == 1
		_spr = spr_playerN_mach;
	if global.gameplay == 1 && noisetype == 0
		_spr = spr_playerN_pogofall;
	
	if paletteselect == 15
	{
		_spr = spr_playerN_chungus;
		draw_set_font(global.font_small);
		if noisetype == 1 && global.gameplay == 0
			draw_text((960 / 2) + xoffset, ((540 / 2) + yoffset) - sprite_get_height(_spr) + 32, "Skateboard");
		else if noisetype == 0
			draw_text((960 / 2) + xoffset, ((540 / 2) + yoffset) - sprite_get_height(_spr) + 32, "Pogo");
	}
}
if character == "P" && paletteselect == 17
	_spr = spr_player_petah;
if character == "S" && paletteselect == 13
	_spr = spr_sbombic;

if paletteselect != -1
	pal_swap_set(spr_palette, paletteselect, false);
else
{
	if !surface_exists(palsurf)
		custompal_update(palcolors);
	else
		pal_swap_set(palsurf, 1, true);
}
draw_sprite_ext(_spr, img, (960 / 2) + xoffset, (540 / 2) + yoffset, 2, 2, 0, c_white, (100 - abs(xoffset)) / 100);

draw_set_colour(c_white);
draw_set_font(global.bigfont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if locked or lockedpal
{
	draw_sprite_ext(_spr, img, (960 / 2) + xoffset, (540 / 2) + yoffset, 2, 2, 0, c_black, 0.75);
	
	pal_swap_reset();
	draw_text((960 / 2) + xoffset, ((540 / 2) + yoffset) - sprite_get_height(_spr), "LOCKED");
}
pal_swap_reset();

// text
if paletteselect == -1
{
	titletext = "CUSTOM PALETTE";
	if !lockedpal
		desctext = "Sky's the limit.\nPress SHIFT to customize.";
	else
		desctext = "You can't unlock this yet.";
}
else
{
	var titletext = (paletteselect < array_length(palettenames) ? palettenames[paletteselect][0] : "PALETTE");
	var desctext = ((paletteselect < array_length(palettenames) && array_length(palettenames[paletteselect]) == 2) ? palettenames[paletteselect][1] : "loypoll please add details");
}

draw_text((960 / 2) + random_range(-1, 1), 540 - 100, titletext);
draw_set_font(global.font_small);
draw_text(960 / 2, 540 - 64, desctext);