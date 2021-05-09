if showtext
{
	if yi < 30
	    yi += 5;
}
else
{
	if yi > -50
	    yi -= 1;
}

draw_set_font(global.smallfont);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_sprite(spr_roomnamebg, 0, xi, yi);
draw_text(xi, yi, string_hash_to_newline(message));

/*
// level preview
if menu == menutypes.levelpreview
{
	// missing objects
	if instance_exists(obj_unsupportedobject)
	{
		draw_set_font(font_small);
		draw_set_colour(c_yellow);
		draw_set_halign(fa_right);
		draw_set_valign(fa_top);
		draw_text(960 - 4, 4, string(instance_number(obj_unsupportedobject)) + " missing objects");
			
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}
	
	// options
	if (!keyboard_check_direct(vk_printscreen) && !optionbutton) or optionbutton
	{
		var mx = device_mouse_x_to_gui(0);
		var my = device_mouse_y_to_gui(0);
	
		var hover = mx >= 32 && my >= 32 && mx < 32 + 64 && my < 32 + 64 && !mouse_check_button(mb_middle);
	
		var __img = 2 - hover;
		if optionbutton
			__img = 0;
	
		draw_sprite(spr_bigsettings_button, __img, 32, 32);
	
		if hover && mouse_check_button_pressed(mb_left)
			optionbutton = !optionbutton;
		
		if optionbutton
		{
			draw_set_font(font_small);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_set_colour(c_white);
			
			draw_text(120, 32,
			"1 Instance region " + (optimized ? "ON" : "OFF") +
			"\n2 Play music " + (playmusic ? "ON" : "OFF") + 
			"\n3 Loop cursor " + (loopmouse ? "ON" : "OFF") +
			"\n4 Trajectories " + (traject ? "ON" : "OFF") +
			"\n5 Show missing " + (showmissing ? "ON" : "OFF"));
			
			if keyboard_check_pressed(ord("1"))
				optimized = !optimized;
			if keyboard_check_pressed(ord("2"))
				playmusic = !playmusic;
			if keyboard_check_pressed(ord("3"))
				loopmouse = !loopmouse;
			if keyboard_check_pressed(ord("4"))
				traject = !traject;
			if keyboard_check_pressed(ord("5"))
				showmissing = !showmissing;
		}
	}
}

if fps <= 30 && fps != 0
{
	draw_set_font(font);
	draw_set_colour(c_white);
	
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	
	draw_text(960 - 4, 540 - 4, string(fps));
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}