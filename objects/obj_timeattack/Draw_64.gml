if global.timeattack && !(instance_exists(obj_gms) && global.__chat)
{
	var middletext = ":";
	if global.taseconds < 10
		middletext = ":0";
	
	draw_set_font(global.bigfont)
	draw_set_halign(fa_center);
	draw_set_color(c_yellow)
	
	var yoff = 0;
	if global.gameplay != 0 && (global.panic or global.snickchallenge)
		yoff = (obj_tv.yi - obj_tv.panicy) / 2;
	draw_text(480 + random_range(1, -1), 440 + random_range(1, -1) + yoff, string_hash_to_newline(string(global.taminutes) + middletext + string(global.taseconds)));
}