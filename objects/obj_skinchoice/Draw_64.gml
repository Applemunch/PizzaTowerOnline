// background
event_inherited();

// draw the skins
img += sprite_get_speed(spr_idle) * 0.35;

if img >= sprite_get_number(spr_idle)
	img -= sprite_get_number(spr_idle);

var _spr = spr_idle;

if sel[1] == "N"
{
	if global.gameplay == 0 && noisetype == 1
		_spr = spr_playerN_mach;
	if global.gameplay != 0 && noisetype == 0
		_spr = spr_playerN_pogofall;
	
	if sel[0] == 15 or sel[0] == 19
	{
		if sel[0] == 19
		{
			_spr = spr_playerN_idle;
			img = 0;
		}
		else
			_spr = spr_playerN_chungus;
		
		draw_set_font(global.font_small);
		if noisetype == 1 && global.gameplay == 0
			draw_text((960 / 2) + xoffset, ((540 / 2) + yoffset) - sprite_get_height(_spr) + 32, "Skateboard");
		else if noisetype == 0 && global.gameplay != 0
			draw_text((960 / 2) + xoffset, ((540 / 2) + yoffset) - sprite_get_height(_spr) + 32, "Pogo");
	}
}
if sel[1] == "P" && sel[0] == 17
	_spr = spr_player_petah;
if sel[1] == "S" && sel[0] == 13
	_spr = spr_sbombic;

if sel[0] != -1
{
	if sprite_exists(spr_palette)
		pal_swap_set(spr_palette, sel[0], false);
}
else
{
	/*
	if !surface_exists(palsurf)
		custompal_update(palcolors);
	else
		pal_swap_set(palsurf, 1, true);
	*/
}
if sprite_exists(_spr)
	draw_sprite_ext(_spr, img, (960 / 2) + xoffset, (540 / 2) + yoffset, 2, 2, 0, (locked ? merge_colour(c_white, c_black, 0.75) : c_white), (100 - abs(xoffset) - abs(yoffset)) / 100);

draw_set_colour(c_white);
draw_set_font(global.bigfont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

pal_swap_reset();
if locked
	draw_text((960 / 2) + xoffset, ((540 / 2) + yoffset) - sprite_get_height(_spr), "LOCKED");

// text
if sel[0] == -1
{
	/*
	palname = "CUSTOM PALETTE";
	paldesc = "Sky's the limit.";
	if !locked
		paldesc += "\nPress SHIFT to customize.";
	*/
	
	sel[0] = 0;
}
else
{
	try
	{
		palname = selarray[sel[0]][0];
		paldesc = selarray[sel[0]][1];
	}
	catch (e)
	{
		palname = "PALETTE";
		paldesc = "loyjqz please add details";
		e = "";
	}
}