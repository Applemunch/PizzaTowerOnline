event_inherited();

// draw the skins
if !locked
{
	img += sprite_get_speed(spr_idle);
	if img >= sprite_get_number(spr_idle)
		img -= sprite_get_number(spr_idle);
}
else
	img = 0;

var _spr = spr_idle;

draw_set_colour(c_white);
draw_set_font(global.bigfont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if locked
{
	draw_text((960 / 2) + xoffset, ((540 / 2) + yoffset) - sprite_get_height(_spr), "LOCKED");
	if sprite_exists(_spr)
		draw_sprite_ext(_spr, img, (960 / 2) + xoffset, (540 / 2) + yoffset + 48, 2, 2, 0, c_black, 1);
}
else if sprite_exists(_spr)
	draw_sprite_ext(_spr, img, (960 / 2) + xoffset, (540 / 2) + yoffset + 48, 2, 2, 0, c_white, (100 - abs(xoffset)) / 100);

// text
palname = ((sel[0] < array_length(selarray) && array_length(selarray[sel[0]]) >= 2) ? selarray[sel[0]][1] : "UNKNOWN HAT");
paldesc = "";
if !locked
	paldesc = ((sel[0] < array_length(selarray) && array_length(selarray[sel[0]]) >= 3) ? selarray[sel[0]][2] : "loypoll please add details");