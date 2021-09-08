if global.timeattack && !(instance_exists(obj_gms) && global.__chat)
{
	var middletext = ":";
	if global.taseconds < 10
		middletext = ":0";
	
	draw_set_font(global.bigfont)
	draw_set_halign(fa_center);
	draw_set_color(c_yellow)
	
	var yy = min(obj_tv.yi - 70, 540 - 60);
	if global.panic or global.snickchallenge or global.modifier == mods.no_toppings
		yy -= 40;
	var xx = 960 / 2;
	
	if !stop && alarm[1] > -1
	{
		xx += random_range(1, -1);
		yy += random_range(1, -1);
	}
	
	draw_text(960 / 2 + random_range(1, -1), yy, string_hash_to_newline(string(global.taminutes) + middletext + string(global.taseconds)));
}